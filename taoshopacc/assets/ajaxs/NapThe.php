<?php 
    require_once("../../config/config.php");
    require_once("../../config/function.php");

    $loaithe = check_string($_POST['loaithe']);
    $menhgia = check_string($_POST['menhgia']);
    $seri = check_string($_POST['seri']);
    $pin = check_string($_POST['pin']);

    if(empty($_SESSION['username']))
    {
        msg_error("Vui lòng đăng nhập ", BASE_URL(''), 2000);
    }
    if(empty($loaithe))
    {
        msg_error2("Vui lòng chọn loại thẻ");
    }
    if(empty($menhgia))
    {
        msg_error2("Vui lòng chọn mệnh giá");
    }
    if(empty($seri))
    {
        msg_error2("Vui lòng nhập seri thẻ");
    }
    if(empty($pin))
    {
        msg_error2("Vui lòng nhập mã thẻ");
    }
    if (strlen($seri) < 5 || strlen($pin) < 5)
    {
        msg_error2("Mã thẻ hoặc seri không đúng định dạng!");
    }
    if (checkFormatCard($loaithe, $seri, $pin)['status'] != true) {
        msg_error2("Định dạng thẻ không hợp lệ");
    }
    // if(time() - strtotime($getUser['createdate']) < 60){
    //     msg_error2("Vui lòng thử lại trong ít phút");
    // }
    if (!isset($_SERVER['HTTP_USER_AGENT']) && !preg_match('/^Mozilla\/\d\.\d \(Windows NT \d\.\d;.*rv:\d\.\d\) Gecko\/\d{8} Firefox\/\d\.\d$/', $_SERVER['HTTP_USER_AGENT'])) {
        msg_error2("Vui lòng không spam");
    } 

    if($CMSNT->num_rows(" SELECT * FROM `cards` WHERE `username` = '".$getUser['username']."' AND `status` = 'xuly'  ") > 2){
        msg_error2("Vui lòng không spam!");
    }
    if(
        $CMSNT->num_rows("SELECT * FROM `cards` WHERE `status` = 'thatbai' AND `username` = '".$getUser['username']."' AND `createdate` >= DATE(NOW()) AND `createdate` < DATE(NOW()) + INTERVAL 1 DAY  ") - 
        $CMSNT->num_rows("SELECT * FROM `cards` WHERE `status` = 'hoantat' AND `username` = '".$getUser['username']."' AND `createdate` >= DATE(NOW()) AND `createdate` < DATE(NOW()) + INTERVAL 1 DAY  ") >= 3)
    {
        msg_error2("Bạn đã bị chặn sử dụng chức năng nạp thẻ trong 1 ngày");
    }
    $code = random('qwertyuiopasdfghjklzxcvbnm1234567890QWERTYUIOPASDFGHJKLZXCVBNM', 32);
    
    
    
    $data = card24h($loaithe, $pin, $seri, $menhgia, $code);
    if($data['status'] == 100)
    {
        msg_error2($data['message']);
    }
    if($data['status'] == 99)
    {
        $CMSNT->insert("cards", array(
                'code' => $code,
                'seri' => $seri,
                'pin'  => $pin,
                'loaithe' => $loaithe,
                'menhgia' => $menhgia,
                'thucnhan' => '0',
                'username' => $getUser['username'],
                'status' => 'xuly',
                'note' => '',
                'createdate' => gettime()
            ));
        msg_success("Gửi thẻ thành công, vui lòng đợi kết quả", "", 2000);
    }
    else
    {
        msg_error2($data['message']);
    }