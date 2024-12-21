<div id="thongbao"></div>
<?=$CMSNT->site('html_footer');?>
<script src="<?=BASE_URL('template/theme/');?>assets/frontend/js/footer.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.6/clipboard.min.js"></script>
<script>
new ClipboardJS('.copy');
</script>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous"
    src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0&appId=281459696201789&autoLogAppEvents=1"
    nonce="ubP0EsuB"></script>


<footer>
    <svg viewBox="0 0 120 28">
        <defs>
            <filter id="goo">
                <feGaussianBlur in="SourceGraphic" stdDeviation="1" result="blur" />
                <feColorMatrix in="blur" mode="matrix" values="
           1 0 0 0 0  
           0 1 0 0 0  
           0 0 1 0 0  
           0 0 0 13 -9" result="goo" />
                <xfeBlend in="SourceGraphic" in2="goo" />
            </filter>
            <path id="wave"
                d="M 0,10 C 30,10 30,15 60,15 90,15 90,10 120,10 150,10 150,15 180,15 210,15 210,10 240,10 v 28 h -240 z" />
        </defs>
        <use id="wave3" class="wave" xlink:href="#wave" x="0" y="-2"></use>
        <use id="wave2" class="wave" xlink:href="#wave" x="0" y="0"></use>
        <g class="gooeff" filter="url(#goo)">
            <circle class="drop drop1" cx="20" cy="2" r="8.8" />
            <circle class="drop drop2" cx="25" cy="2.5" r="7.5" />
            <circle class="drop drop3" cx="16" cy="2.8" r="9.2" />
            <circle class="drop drop4" cx="18" cy="2" r="8.8" />
            <circle class="drop drop5" cx="22" cy="2.5" r="7.5" />
            <circle class="drop drop6" cx="26" cy="2.8" r="9.2" />
            <circle class="drop drop1" cx="5" cy="4.4" r="8.8" />
            <circle class="drop drop2" cx="5" cy="4.1" r="7.5" />
            <circle class="drop drop3" cx="8" cy="3.8" r="9.2" />
            <circle class="drop drop4" cx="3" cy="4.4" r="8.8" />
            <circle class="drop drop5" cx="7" cy="4.1" r="7.5" />
            <circle class="drop drop6" cx="10" cy="4.3" r="9.2" />
            <circle class="drop drop1" cx="1.2" cy="5.4" r="8.8" />
            <circle class="drop drop2" cx="5.2" cy="5.1" r="7.5" />
            <circle class="drop drop3" cx="10.2" cy="5.3" r="9.2" />
            <circle class="drop drop4" cx="3.2" cy="5.4" r="8.8" />
            <circle class="drop drop5" cx="14.2" cy="5.1" r="7.5" />
            <circle class="drop drop6" cx="17.2" cy="4.8" r="9.2" />
            <use id="wave1" class="wave" xlink:href="#wave" x="0" y="1" />
        </g>
    </svg>

    <div class="py-3" style="background: #1b1a1a">
        <div
            class="mt-2 mb-32 md:mb-0 px-4 md:px-0 relative max-w-6xl w-full mx-auto text-white grid grid-cols-12 gap-4 font-semibold text-gray-300">
            <div class="col-span-12 md:col-span-4 py-2">
                <span class="mt-4 py-4 px-4 flex flex-col items-center"><img src="<?=BASE_URL($CMSNT->site('logo_dark'));?>"
                        class="mb-2" style="max-width:250px;"> <span
                        class="text-center"><?=$CMSNT->site('text_left_footer');?></span></span>
            </div>
            <div class="col-span-12 md:col-span-5 py-2">
                <?=$CMSNT->site('text_center_footer');?>'' </div>
            <div class="col-span-12 md:col-span-3 py-2">
                <!--
                <div class="fb-page" data-href="<?=$CMSNT->site('facebook');?>" data-tabs="timeline" data-width=""
                    data-height="200" data-small-header="false" data-adapt-container-width="true"
                    data-hide-cover="false" data-show-facepile="true">
                    <blockquote cite="<?=$CMSNT->site('facebook');?>" class="fb-xfbml-parse-ignore"><a
                            href="<?=$CMSNT->site('facebook');?>">Fanpage</a></blockquote>
                </div>-->
            </div>
        </div>
    </div>


    <div class="py-2 text-white font-medium" style="background: #151212" bis_skin_checked="1">
        <div class="max-w-6xl mx-auto text-center" bis_skin_checked="1">
            Vận hành bởi <a href="<?=BASE_URL('');?>"><?=$CMSNT->site('tenweb');?></a> - Developer by <a target="_blank"
                href="https://www.cmsnt.co/">CMSNT.CO</a>
        </div>
    </div>
</footer>

 
<div class="hotline-phone-ring-wrap">
	<div class="hotline-phone-ring">
		<div class="hotline-phone-ring-circle"></div>
		<div class="hotline-phone-ring-circle-fill"></div>
		<div class="hotline-phone-ring-img-circle">
		<a href="tel:<?=$CMSNT->site('hotline');?>" class="pps-btn-img">
			<img src="<?=BASE_URL('assets/img/icon-call.png');?>" alt="Gọi điện thoại" width="50">
		</a>
		</div>
	</div>
</div>
<button type="button"
    class="cd-top h-10 w-10 border-2 border-blue-600 fixed opacity-90 rounded text-2xl text-white bg-blue-500 rounded-full font-bold flex items-center justify-center focus:outline-none"
    style="right:2%;bottom:14%;"><i class="bx bx-up-arrow-alt"></i></button>
</html>