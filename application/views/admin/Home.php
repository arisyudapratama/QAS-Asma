<div align="center" style="color: #8f8f8f;">
<a class="menu-item flex-equal font-adjust fx-hover fx-hover-neon fx-appear-blackbars" style="height: 89.4667px; line-height: 89.4667px; font-size: 89.4667px; transform: matrix(1, 0, 0, 1, 0, 0);" data-height="89.46666463216145">
    Sistem
<div class="blackbar" style="right: 0%; left: 100%; display: none;"></div></a>
</div>

<div align="center" style="color: #8f8f8f;">
<a class="menu-item flex-equal font-adjust fx-hover fx-hover-neon fx-appear-blackbars" style="height: 89.4667px; line-height: 89.4667px; font-size: 89.4667px; transform: matrix(1, 0, 0, 1, 0, 0);" data-height="89.46666463216145">
    Tanya Jawab
<div class="blackbar" style="right: 0%; left: 100%; display: none;"></div></a>
</div>

<div align="center" style="color: #8f8f8f;">
<a class="menu-item flex-equal font-adjust fx-hover fx-hover-neon fx-appear-blackbars" style="height: 89.4667px; line-height: 89.4667px; font-size: 89.4667px; transform: matrix(1, 0, 0, 1, 0, 0);" data-height="89.46666463216145">
    Penyakit Asma
<div class="blackbar" style="right: 0%; left: 100%; display: none;"></div></a>
</div>

<div class="fullpage chameleon-loader loading" style="z-index: 100; display: none; opacity: 0;">
    <div class="countdown-wrapper">
        <div class="countdown-text" style="display: none;">
        </div>        
    </div>
    <script>
    (function() {
        var interv,i = 1;
        var dn = document.querySelector(".countdown-text");
        var k = false;
        try{k = window.localStorage.getItem("visited");}catch(e){}
        if(k){return};
        interv = setInterval(function(){
          dn.innerText = i<10?"0"+i:i;
          window.chamCounter = i;
          i+=1;
          if(window.chamStopCounter || i>99){clearInterval(interv);}
      },140);
    }());
	</script>
</div>

<script src="<?php echo base_url('js/background.js') ?>"></script>
<script src="<?php echo base_url('js/bundle.js') ?>"></script>