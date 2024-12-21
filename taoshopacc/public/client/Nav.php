<body style="
background: url('<?=BASE_URL($CMSNT->site('background'));?>') 0 / cover fixed;
background-repeat: no-repeat;
">
    <div style="height: auto;min-height: 100vh;">
        <div class="sticky top-0 z-100" style="background: rgb(26 26 26);">
            <div class="shadow">
                <header class="mx-auto w-full max-w-6xl px-2 flex flex-wrap items-center py-2"
                    style="background: rgb(26 26 26);color:white;">
                    <div class="flex-1 flex justify-between items-center">
                        <a href="<?=BASE_URL('');?>"><img width="200px" src="<?=BASE_URL($CMSNT->site('logo_dark'));?>"
                                class="v-logo"></a>
                    </div>
                    <?php if(empty($_SESSION['username'])) { ?>
                    <a href="<?=BASE_URL('Auth/Login');?>"
                        class="lg:hidden flex border mx-2 px-3 h-8 border-gray-400 rounded items-center text-white-800 font-bold justify-center pointer-cursor">
                        Đăng nhập
                    </a>
                    <a href="<?=BASE_URL('Auth/Register');?>"
                        class="lg:hidden flex border mx-2 px-3 h-8 border-gray-400 rounded items-center text-white-800 font-bold justify-center pointer-cursor">
                        Đăng ký
                    </a>
                    <?php } else { ?>
                    <a href="<?=BASE_URL('Auth/Profile');?>"
                        class="lg:hidden relative mx-2 flex border px-3 h-8 border-gray-400 rounded items-center text-white-800 font-bold justify-center pointer-cursor nuxt-link-exact-active nuxt-link-active"><span
                            class="block"><i class="fa fa-user" aria-hidden="true"></i>
                            <?=$_SESSION['username'];?> - <?=format_cash($getUser['money']);?></span></a>

                    <?php }?>
                    <label for="menu-toggle" id="toggle" class="pointer-cursor text-white-800 text-2xl lg:hidden block">
                        <span class="h-8 w-8 border border-gray-400 justify-center items-center inline-flex rounded"><i
                                class="bx bx-menu"></i></span>
                    </label>
                    <div class="hidden md:mt-0 lg:flex lg:items-center lg:w-auto w-full" id="menu-toggle">
                        <nav class="font-bold lg:text-lg">
                            <ul class="lg:flex items-center justify-between text-base text-white-700 lg:pt-0">
                                <li><a href="<?=BASE_URL('');?>" class="lg:p-3 py-1 lg:py-2 px-2 lg:px-3 block">TRANG
                                        CHỦ</a></li>
                                <li><a href="<?=BASE_URL('nap-tien-qua-ngan-hang/');?>"
                                        class="lg:p-3 py-1 lg:py-2 px-2 lg:px-3 block">NẠP TIỀN QUA BANK/MOMO</a></li>
                                <li><a href="<?=BASE_URL('History');?>"
                                        class="lg:p-3 py-1 lg:py-2 px-2 lg:px-3 block">LỊCH SỬ MUA ACCOUNTS</a></li>
                                <?php if(isset($_SESSION['username']) && $getUser['level'] == 'admin') { ?>
                                <li><a href="<?=BASE_URL('admin/');?>"
                                        class="lg:p-3 py-1 lg:py-2 px-2 lg:px-3 block">PANEL ADMIN</a></li>
                                <?php }?>
                                <?php if(isset($_SESSION['username']) && $getUser['ctv'] == 1) { ?>
                                <li><a href="<?=BASE_URL('public/ctv/');?>"
                                        class="lg:p-3 py-1 lg:py-2 px-2 lg:px-3 block">PANEL CTV</a></li>
                                <?php }?>
                                <?php if(empty($_SESSION['username'])) { ?>
                                <a href="<?=BASE_URL('Auth/Login');?>"
                                    class="lg:ml-4 flex border px-3 h-8 border-gray-400 lg:rounded-full items-center text-white-800 font-bold justify-center lg:mb-0 mb-2 pointer-cursor"><span
                                        class="block"><i class="relative bx bxs-user mr-2"></i>Đăng nhập</span></a>
                                <a href="<?=BASE_URL('Auth/Register');?>"
                                    class="lg:ml-4 flex border px-3 h-8 border-gray-400 lg:rounded-full items-center text-white-800 font-bold justify-center lg:mb-0 mb-2 pointer-cursor"><span
                                        class="block"><i class="relative bx bxs-user-plus mr-2"></i> Đăng ký</span></a>
                                <?php } else { ?>
                                <a href="<?=BASE_URL('Auth/Profile');?>"
                                    class="lg:ml-4 flex border px-3 h-8 border-gray-400 lg:rounded-full items-center text-white-800 font-bold justify-center lg:mb-0 mb-2 pointer-cursor"><span
                                        class="block"><i class="fa fa-user" aria-hidden="true"></i>
                                        <?=$_SESSION['username'];?> - <?=format_cash($getUser['money']);?></span></a>
                                <a href="<?=BASE_URL('Auth/Logout');?>"
                                    class="lg:ml-4 flex border px-3 h-8 border-gray-400 lg:rounded-full items-center text-white-800 font-bold justify-center lg:mb-0 mb-2 pointer-cursor"><span
                                        class="block"><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng
                                        xuất</span></a>
                                <?php }?>
                    </div>
                </header>
            </div>
        </div>