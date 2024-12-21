<?php
    require_once("../config/config.php");
    require_once("../config/function.php");




if(isset($_GET['request_id']) && isset($_GET['callback_sign'])){
    $status = check_string($_GET['status']);
    $message = check_string($_GET['message']);
    $request_id = check_string($_GET['request_id']); // request id
    $declared_value = check_string($_GET['declared_value']); //Giá trị khai báo
    $value = check_string($_GET['value']); //Giá trị thực của thẻ
    $amount = check_string($_GET['amount']); //Số tiền nhận được
    $code = check_string($_GET['code']);
    $serial = check_string($_GET['serial']);
    $telco = check_string($_GET['telco']);
    $trans_id = check_string($_GET['trans_id']); //Mã giao dịch bên chúng tôi
    $callback_sign = check_string($_GET['callback_sign']);
    
    $row = $CMSNT->get_row(" SELECT * FROM `cards` WHERE `code` = '$request_id' AND `status` = 'xuly' ");
    $thucnhan = $row['menhgia'] - $row['menhgia'] * $CMSNT->site('ck_card') / 100;
    
    if($callback_sign != md5($partner_key_card24.$code.$serial)){
        die('callback_sign_error');
    }
    if($status == 1){
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
            'sotientruoc' => $row_user['money'],
            'sotienthaydoi' => $thucnhan,
            'sotiensau' => $row_user['money'] + $thucnhan,
            'thoigian' => gettime(),
            'noidung' => 'Nạp tiền tự động qua thẻ cào seri ('.$row['seri'].')',
            'username' => $row_user['username']
        ));
        die('Thẻ đúng !');
    }
    else if($status == 2)
    {
     /* CẬP NHẬT TRẠNG THÁI THẺ CÀO */
        $CMSNT->update("cards", array(
            'status'    => 'thatbai',
            'thucnhan'  => '0'
        ), " `id` = '".$row['id']."' ");
        exit('Thẻ sai mệnh giá !');
    }
    else
    {
         /* CẬP NHẬT TRẠNG THÁI THẺ CÀO */
        $CMSNT->update("cards", array(
            'status'    => 'thatbai',
            'thucnhan'  => '0'
        ), " `id` = '".$row['id']."' ");
        exit('Thẻ không hợp lệ !');
    }
}

    
    
    
 

