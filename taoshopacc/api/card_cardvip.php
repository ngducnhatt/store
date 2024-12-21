<?php
    require_once("../config/config.php");
    require_once("../config/function.php");

    if (isset($_GET['status']) && isset($_GET['pricesvalue']) && isset($_GET['value_receive']) && isset($_GET['card_code']) && isset($_GET['card_seri']) && isset($_GET['requestid']) && isset($_GET['value_customer_receive'])) 
    {
        # Quý khách lưu ý dựa vào status để trả lại kết quả cho khách
        $status = check_string($_GET['status']); 
        # Đối số pricesvalue là mệnh giá thẻ cào lúc quý khách gửi thẻ
        $pricesvalue = check_string($_GET['pricesvalue']);
        # Đối số value_receive là mệnh giá thực của thẻ, quý khách chỉ quan tâm đối số này khi status nhận giá trị 200 hoặc 201
        $value_receive = check_string($_GET['value_receive']);
        # Đối số card_code là mã thẻ cào quý khách gửi
        $card_code = check_string($_GET['card_code']);
        # Đối số card_seri là serial cào quý khách gửi
        $card_seri = check_string($_GET['card_seri']);
        # Đối số value_customer_receive là mệnh giá mà quý khách nhận được sau khi đã trừ chiết khấu, mệnh giá này là mệnh giá được cộng vào tài khoản CARDVIP
        $value_customer_receive = check_string($_GET['value_customer_receive']);
        # Đối số requestid là mã đơn thẻ cào mà quý khách đã gửi sang
        $requestid = check_string($_GET['requestid']);
        
        
        $code = $requestid;
        $row = $CMSNT->get_row(" SELECT * FROM `cards` WHERE `code` = '$code' AND `status` = 'xuly' ");
        $thucnhan = $row['menhgia'];
        if ($status == 200)
        {
            /* CẬP NHẬT TRẠNG THÁI THẺ CÀO */
            $CMSNT->update("cards", array(
                'status'    => 'thanhcong',
                'thucnhan'  => $thucnhan
            ), " `id` = '".$row['id']."' ");

            $row_user = $CMSNT->get_row(" SELECT * FROM `users` WHERE `username` = '".$row['username']."' ");

            /* CỘNG TIỀN USER */
            $CMSNT->cong("users", "money", $thucnhan, " `id` = '".$row_user['id']."' ");
            $CMSNT->cong("users", "total_money", $thucnhan, " `id` = '".$row_user['id']."' ");
            /* GHI LOG DÒNG TIỀN */
            $CMSNT->insert("dongtien", array(
                'sotientruoc' => $row_user['money'] + $thucnhan,
                'sotienthaydoi' => $thucnhan,
                'sotiensau' => $row_user['money'],
                'thoigian' => gettime(),
                'noidung' => 'Nạp tiền tự động qua thẻ cào seri ('.$row['seri'].')',
                'username' => $row_user['username']
            ));
        }
        else
        {
            /* CẬP NHẬT TRẠNG THÁI THẺ CÀO */
            $CMSNT->update("cards", array(
                'status'    => 'thatbai',
                'thucnhan'  => '0'
            ), " `id` = '".$row['id']."' ");
        }
    }

