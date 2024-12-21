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
    $code = random('qwertyuiopasdfghjklzxcvbnm1234567890QWERTYUIOPASDFGHJKLZXCVBNM', 32);
    $IsFast = 'true';
    $apikey = $CMSNT->site('api_card');
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => "https://partner.cardvip.vn/api/createExchange",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS =>"{\n    \"APIKey\": \"$apikey\",\n    \"NetworkCode\": \"$loaithe\",\n    \"PricesExchange\": \"$menhgia\",\n    \"NumberCard\": \"$pin\",\n    \"SeriCard\": \"$seri\",\n    \"IsFast\": \"$IsFast\",\n    \"RequestId\": \"$code\"\n}",
        CURLOPT_HTTPHEADER => array(
            "Content-Type: application/json"
        ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    $jsonData = json_decode($response);
    if (isset($jsonData->status))
    {
        if($jsonData->status == 200)
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
        else if ($jsonData->status == 100)
        {
            msg_error2("Nhập thiếu dữ liệu");
        }
        else if ($jsonData->status == 400)
        {
            msg_error2("Mã thẻ đã tồn tại");
        }
        else if ($jsonData->status == 401)
        {
            msg_error2("Mệnh giá hoặc mã nhà mạng không tồn tại");
        }
        else if ($jsonData->status == 500)
        {
            msg_error2("Hệ thống bảo trì, vui lòng đợi!");
        }
        else if ($jsonData->status == 403)
        {
            msg_error2("Lỗi hệ thống");
           // echo '<script type="text/javascript">swal("Lỗi", " Lỗi hệ thống", "error");</script>';
        }
        else if ($jsonData->status == 300)
        {
            msg_error2("API không tồn tại");
            //echo '<script type="text/javascript">swal("Lỗi", " API không tồn tại", "error");</script>';
        }
        else if ($jsonData->status == 301)
        {
            msg_error2("API Key chưa được kích hoạt");
            //echo '<script type="text/javascript">swal("Lỗi", " API Key chưa được kích hoạt", "error");</script>';
        }
        else if ($jsonData->status == 302)
        {
            msg_error2("API Key đã bị khóa");
            //echo '<script type="text/javascript">swal("Lỗi", " API Key đã bị khóa", "error");</script>';
        }
        else
        {
            msg_error2("Gửi thẻ thất bại, vui lòng thử lại");
        }
    }
    else
    {
        msg_error2("Không thể nhập dữ liệu vào API");
    }