// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require fancybox
//= require jquery_ujs
//= require owl.carousel
//= require fotorama
//= require jquery-labelauty



$(document).ready(function() {
    $(".to-labelauty").labelauty();
    $("#owl-demo").owlCarousel({

      navigation : true,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem : true

      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false

      });

    $(".various").fancybox({
    maxWidth  : 800,
    maxHeight : 600,
    fitToView : false,
    width   : '70%',
    height    : '70%',
    autoSize  : false,
    closeClick  : false,
    openEffect  : 'none',
    closeEffect : 'none',
    cyclic: 'false'
  });

    $('.spoiler_links').click(function(){
  $(this).parent().children('div.spoiler_body').toggle('normal');
  return false;
 });


    


$('#send4').click(function(){
  $('#send5').click();
});


$("a#example1").fancybox({
                'overlayShow'   : false,
                'transitionIn'  : 'elastic',
                'transitionOut' : 'elastic'
            });

            $("a#example2").fancybox({
                'overlayShow'   : false,
                'transitionIn'  : 'elastic',
                'transitionOut' : 'elastic'
            });

            $("a#example3").fancybox({
                'transitionIn'  : 'none',
                'transitionOut' : 'none'    
            });

            $("a#example4").fancybox({
                'opacity'       : true,
                'overlayShow'   : false,
                'transitionIn'  : 'elastic',
                'transitionOut' : 'none'
            });

            $("a#example5").fancybox();

            $("a#example6").fancybox({
                'titlePosition'     : 'outside',
                'overlayColor'      : '#000',
                'overlayOpacity'    : 0.9
            });

            $("a#example7").fancybox({
                'titlePosition' : 'inside'
            });

            $("a#example8").fancybox({
                'titlePosition' : 'over'
            });

            $("a[rel=example_group]").fancybox({
                'transitionIn'      : 'none',
                'transitionOut'     : 'none',
                'titlePosition'     : 'over',
                'titleFormat'       : function(title, currentArray, currentIndex, currentOpts) {
                    return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
                }
            });

            /*
            *   Examples - various
            */

            $("#various1").fancybox({
                'titlePosition'     : 'inside',
                'transitionIn'      : 'none',
                'transitionOut'     : 'none'
            });

            $("#various2").fancybox();

            $("#various3").fancybox({
                'width'             : '75%',
                'height'            : '75%',
                'autoScale'         : false,
                'transitionIn'      : 'none',
                'transitionOut'     : 'none',
                'type'              : 'iframe'
            });

            $("#various4").fancybox({
                'padding'           : 0,
                'autoScale'         : false,
                'transitionIn'      : 'none',
                'transitionOut'     : 'none'
            });





});
