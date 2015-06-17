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
//= require jquery_ujs
//= require fotorama

//= require_tree .




$(document).ready(function() {

    $(".to-labelauty").labelauty({ checked_label: "value1", unchecked_label: "value2",  });
        $(".to-labelauty").sity({minimum_width: "52px" });
// калькулятор кредита................................./
var Ld = "<img src='load.gif' alt='' />";
var error = "<span style='font-size: 11px; font-weight: 100;'><font color='#ff0000'>Ошибка!</font> Форма заполненна не корректно!</span>";
var erForm = "";

$("#send4").click(function(){
    $("#h1").html(Ld).show();
    $("#h2").html(Ld).show();
    $("#h3").html(Ld).show();
    $("#h4").html(Ld).show();
    
    var amount = 17000;
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

});