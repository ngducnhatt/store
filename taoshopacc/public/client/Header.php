<!-- PHIÊN BẢN <?=$config['version'];?> | CMSNT.CO -->
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
    <title><?=$title;?></title>
    <link rel="icon" type="image/png" href="<?=$CMSNT->site('favicon');?>">
    <meta name="description" content="<?=$CMSNT->site('mota');?>">
    <meta name="keywords" content="<?=$CMSNT->site('tukhoa');?>">
    <!-- Open Graph data -->
    <meta property="og:title" content="<?=$CMSNT->site('tenweb');?>">
    <meta property="og:type" content="Website">
    <meta property="og:url" content="<?=BASE_URL('');?>">
    <meta property="og:image" content="<?=$CMSNT->site('anhbia');?>">
    <meta property="og:description" content="<?=$CMSNT->site('mota');?>">
    <meta property="og:site_name" content="<?=$CMSNT->site('tenweb');?>">
    <meta property="article:section" content="<?=$CMSNT->site('mota');?>">
    <meta property="article:tag" content="<?=$CMSNT->site('tukhoa');?>">
    <!-- Twitter Card data -->
    <meta name="twitter:card" content="<?=$CMSNT->site('anhbia');?>">
    <meta name="twitter:site" content="@CMSNT">
    <meta name="twitter:title" content="<?=$CMSNT->site('tenweb');?>">
    <meta name="twitter:description" content="<?=$CMSNT->site('mota');?>">
    <meta name="twitter:creator" content="@CMSNT">
    <meta name="twitter:image:src" content="<?=$CMSNT->site('anhbia');?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link data-n-head="ssr" rel="preconnect" href="https://fonts.gstatic.com">
    <link data-n-head="ssr" rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Goldman&amp;display=swap">
    <link data-n-head="ssr" rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&amp;family=Roboto:wght@900&amp;display=swap">
    <link href="<?=BASE_URL('template/theme/');?>assets/frontend/css/style.css?v=1621615725" rel="stylesheet"
        type="text/css" />
    <link href="<?=BASE_URL('template/');?>css.css" rel="stylesheet" type="text/css" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <script src="<?=BASE_URL('template/theme/');?>assets/frontend/plugins/jquery/jquery-2.1.0.min.js"></script>
    <script src="<?=BASE_URL('template/theme/');?>assets/frontend/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/lazyload@2.0.0-rc.2/lazyload.js"></script>
    <script src="<?=BASE_URL('template/theme/');?>assets/frontend/plugins/jquery-cookie/jquery.cookie.js"></script>
    <script src="<?=BASE_URL('template/theme/');?>assets/frontend/theme/assets/plugins/js-cookie/js.cookie.js"
        type="text/javascript"></script>
    <script
        src="<?=BASE_URL('template/theme/');?>assets/frontend/theme/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
    <script src="<?=BASE_URL('template/theme/');?>assets/frontend/js/kun.js"></script>
    <script src="<?=BASE_URL('template/theme/');?>assets/frontend/js/backtotop.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/vanilla-lazyload@17.3.2/dist/lazyload.min.js"></script>
    <script src="<?=BASE_URL('template/');?>cute-alert/cute-alert.js" type="text/javascript"></script>
    <link class="main-stylesheet" href="<?=BASE_URL('template/');?>cute-alert/style.css" rel="stylesheet"
        type="text/css">
    <link class="main-stylesheet" href="<?=BASE_URL('style.css');?>" rel="stylesheet" type="text/css">
    <script type='text/javascript'>

    </script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <?php if($CMSNT->site('block_f12') == 'ON') { ?>
    <script type='text/javascript'>
    //<![CDATA[
    ! function t() {
        try {
            ! function t(n) {
                1 === ("" + n / n).length && 0 !== n || function() {}.constructor("debugger")(), t(++n)
            }(0)
        } catch (n) {
            setTimeout(t, 100) // thời gian độ trễ
        }
    }();
    //]]>
    </script>
    <?php }?>
</head>


<?php
if(isset($_SESSION['username']))
{
    if($getUser['banned'] == 1)
    {
        session_destroy();
        die('Tài khoản của bạn đã bị khóa, vui lòng liên hệ quản trị viên!');
    }
    if($getUser['level'] != 'admin')
    {
        if($CMSNT->site('baotri') == 'OFF')
        {
            die('Website đang bảo trì định kỳ, vui lòng quay lại sau!');
        }
    }
}
else
{
    if($CMSNT->site('baotri') == 'OFF')
    {
        die('Website đang bảo trì định kỳ, vui lòng quay lại sau!');
    }
}