<script src="/js/jquery-1.11.1.min.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/SmoothScroll.min.js"></script>
<script src="/js/jquery.tools.min.js"></script>
<script src="/js/jquery.mobile.custom.min.js"></script>
<script src="/js/jquery.cm-overlay.js"></script>
<script src="/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="/js/move-top.js"></script>
<script type="text/javascript" src="/js/easing.js"></script>
<script src="/js/jarallax.js"></script>

<script type="text/javascript">
  $(function () {
    $(".scroll").click(function(event){
      event.preventDefault();
      $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
    });

    // Slideshow 4
    $("#slider4").responsiveSlides({
      auto: true,
      pager:true,
      nav:true,
      speed: 500,
      namespace: "callbacks",
      before: function () {
        $('.events').append("<li>before event fired.</li>");
      },
      after: function () {
        $('.events').append("<li>after event fired.</li>");
      }
    });

    $('.cm-overlay').cmOverlay();

    $().UItoTop({ easingType: 'easeOutQuart' });

    /* init Jarallax */
    $('.jarallax').jarallax({
      speed: 0.5,
      imgWidth: 1366,
      imgHeight: 768
    })
  });
</script>
