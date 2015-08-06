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


    var Ld = "<img src='load.gif' alt='' />";
var error = "<span style='font-size: 11px; font-weight: 100;'><font color='#ff0000'>Ошибка!</font> Форма заполненна не корректно!</span>";
var erForm = "";

$("#send4").click(function(){
    $("#h1").html(Ld).show();
    $("#h2").html(Ld).show();
    $("#h3").html(Ld).show();
    $("#h4").html(Ld).show();
    
    var amount = 2000;
        var interest = $("#calculator input[name='procent']").val()/1200;
    var yearCredit = $("#calculator input[name='year']").val();
    
    
    var Valjuta = $("#calculator select[name='posValjuta']").val();
    var time = yearCredit * 12 ;
    /*alert(time);*/
    
    function calculatePayment() {
    var rate = amount * (interest * Math.pow(1 + interest, time)) / (Math.pow(1 + interest, time) - 1);
    var summaVsego = rate * time;
    var pereplata = summaVsego - amount;
    $("#calculator input[name='platez']").val(rate.toFixed(2));
    $("#h2").text(time);
    $("#h3").text(summaVsego.toFixed(2));
    $("#h4").text(pereplata.toFixed(2));
    }

if (amount == "") {erForm = "yes";}
if (interest == "") {erForm = "yes";}
if (yearCredit == "0" && month == "0") {erForm = "yes";}

if (erForm == "") { calculatePayment(); } else {
$("#h1").html(error);
$("#h2").html(error);
$("#h3").html(error);
$("#h4").html(error); 
erForm = "";}
    return false;
});




$('#send4').click(function(){
  $('#send5').click();
});



});

