<?php
        require_once("../../config/config.php");
        require_once("../../config/function.php");
        $title = 'THANH TOÁN | '.$CMSNT->site('tenweb');
        require_once("../../public/client/Header.php");
        require_once("../../public/client/Nav.php");
?>
<?php
/* BẢN QUYỀN THUỘC VỀ CMSNT.CO | NTTHANH LEADER NT TEAM */
if(isset($_GET['id']))
{
    $row = $CMSNT->get_row(" SELECT * FROM `category_caythue` WHERE `id` = '".check_string($_GET['id'])."'  ");
    if(!$row)
    {
        admin_msg_error("Liên kết không tồn tại", BASE_URL(''), 500);
    }
}
else
{
    admin_msg_error("Liên kết không tồn tại", BASE_URL(''), 0);
}

?>


<div class="mt-12 relative w-full max-w-6xl mx-auto text-gray-800 pb-8 px-2 md:px-0 ">
    <div class="mb-4 py-4 md:p-4 bg-box-dark">
        <div
            class="fade-in mb-2 py-2 md:mb-4 block uppercase md:py-4 text-center text-yellow-400 md:text-3xl text-2xl font-extrabold text-fill ">
            <?=$row['title'];?>
        </div>
        <div class="mb-6"><span class="mx-auto block w-40 border-2 border-red-500 "></span>
        </div>
        <div
            class="sticky col-span-12 grid grid-cols-10 gap-2 select-none py-2 px-2 color-grant text-xl font-bold rounded">
            <div class="col-span-12 md:col-span-12 text-center">
                SỐ TIỀN CẦN THANH TOÁN: <b id="thanhtoan">0</b>đ
            </div>
        </div>
        <div class="v-account-detail p-2 md:px-0 mt-5">
            <div class="v-infomations ">
                <div class="py-3 px-5">
                    <span class="mb-2 block">
                        <div class="flex items-center relative">
                            <select id="dichvu" onchange="showPrice()"
                                class="border border-gray-500 rounded bg-white text-gray-800 appearance-none w-full py-2 px-3 leading-tight focus:outline-none">
                                <option data-money="0" value="">* Chọn gói cần mua</option>
                                <?php foreach($CMSNT->get_list("SELECT * FROM `groups_caythue` WHERE `category` = '".$row['id']."' ") as $group) {?>
                                <option data-money="<?=$group['money'];?>" value="<?=$group['id'];?>">
                                    <?=$group['title'];?></option>
                                <?php }?>
                            </select>
                            <div
                                class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                                    class="fill-current h-4 w-4">
                                    <path
                                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z">
                                    </path>
                                </svg>
                            </div>
                        </div>
                    </span>
                    <span class="mb-2 block">
                        <div class="flex items-center relative"><input placeholder="Nhập tài khoản đăng nhập" id="tk"
                                class="border border-gray-500 rounded bg-white text-gray-800 appearance-none w-full py-2 px-3 leading-tight focus:outline-none">
                        </div>
                    </span>
                    <span class="mb-2 block">
                        <div class="flex items-center relative"><input placeholder="Nhập mật khẩu" id="mk"
                                class="border border-gray-500 rounded bg-white text-gray-800 appearance-none w-full py-2 px-3 leading-tight focus:outline-none">
                        </div>
                    </span>
                    <span class="mb-2 block">
                        <div class="flex items-center relative"><textarea placeholder="Nhập ghi chú nếu có" id="ghichu"
                                class="border border-gray-500 rounded bg-white text-gray-800 appearance-none w-full py-2 px-3 leading-tight focus:outline-none"></textarea>
                        </div>
                    </span>
                    <center class="mt-4"><button type="button" id="Submit"
                            class="uppercase flex w-50 font-semibold rounded items-center justify-center h-10 text-white text-xl rounded-none focus:outline-none px-4 text-center bg-red-500 hover:bg-red-600">
                            <i class="fa fa-cart-plus mr-1" aria-hidden="true"></i>THANH TOÁN
                        </button>
                    </center>
                </div>
            </div>
        </div>
        <div class="alert-info block2" role="alert">
            <?=$row['luuy'];?>
        </div>
        <div class="v-account-detail p-2 md:px-0 mt-4">
            <div class="v-account-detail-1" id="taikhoan">
                <div class="mb-10">
                    <img src="<?=BASE_URL($row['img']);?>" data-sizes="auto"
                        class="border border-gray-400 mb-2 w-full lazyLoad lazy" />
                </div>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript">
function showPrice() {
    var ketqua = $('#dichvu').children('option:selected').attr('data-money').replace(/(.)(?=(\d{3})+$)/g, '$1.');
    $("#thanhtoan").html(ketqua);
}
$("#Submit").on("click", function() {

    $('#Submit').html('<i class="fa fa-spinner fa-spin"></i> ĐANG XỬ LÝ').prop('disabled',
        true);
    $.ajax({
        url: "<?=BASE_URL("assets/ajaxs/CayThue.php");?>",
        method: "POST",
        data: {
            type: 'Order',
            tk: $("#tk").val(),
            mk: $("#mk").val(),
            ghichu: $("#ghichu").val(),
            dichvu: $("#dichvu").val()
        },
        success: function(response) {
            $("#thongbao").html(response);
            $('#Submit').html(
                    '<i class="fa fa-cart-plus mr-1" aria-hidden="true"></i>THANH TOÁN')
                .prop('disabled', false);
        }
    });
});
</script>

<?php 
    require_once("../../public/client/Footer.php");
?>