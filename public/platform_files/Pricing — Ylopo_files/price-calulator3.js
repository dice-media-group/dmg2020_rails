$(document).ready(function(){
	$("#choices").addClass("animate-this");
	$("#make-your-choice .sqs-col-2 .spacer-block").addClass("animate-this");
	$("#make-your-choice .promoted-gallery-wrapper").addClass("animate-this");
	$("#digital-marketing").hide();
	$("#technology-platform").hide();
	$("#technology-platform2").hide();
	$("#content-slider1 li").hide();
	$(".loading").hide();
	$("#pricing-summary-page, #pricing-summary-page2, #pricing-summary-page3, #pricing-summary-page4").addClass("pricing-summary-page");
	$("#pricing-summary-page, #pricing-summary-page2, #pricing-summary-page3, #pricing-summary-page4").hide();
	
});
 
 
$(".choice1").click(function(){
    $(".disappearing-act").addClass("hide-extra");
    $(".disappearing-act2").addClass("hide-extra");
    $(".choice2").addClass("disable-me");
    $("#choices").addClass("hide-extra");
    $("#make-your-choice .promoted-gallery-wrapper").addClass("adjust-height");
    $("#make-your-choice .sqs-col-2 .spacer-block").addClass("hide-extra");      
    $(".arrow-down1").addClass("arrow-show");  
    $(".choice1").removeClass("disable-me");  
    $(".arrow-down2").removeClass("arrow-show"); 
	
	$("#technology-platform").fadeIn();
	$("#technology-platform2").fadeIn();
	$("#digital-marketing").fadeOut();
	$(".slide1").fadeOut();
	$(".slide2").fadeOut();
	$(".pricing-summary-page").hide();
	
	$("#make-your-choice p").addClass("arrow-adjustment");

	
});

$(".choice2").click(function(){
    $(".disappearing-act").addClass("hide-extra");
    $(".disappearing-act2").addClass("hide-extra");
    $(".choice1").addClass("disable-me");
    $("#choices").addClass("hide-extra");
    $("#make-your-choice .promoted-gallery-wrapper").addClass("adjust-height");
    $("#make-your-choice .sqs-col-2 .spacer-block").addClass("hide-extra");    
    $(".arrow-down2").addClass("arrow-show");    
	$(".choice2").removeClass("disable-me");  
    $(".arrow-down1").removeClass("arrow-show"); 
	$(".slide1").fadeIn();
	$(".slide2").fadeOut();
	$("#digital-marketing").fadeIn();
	$("#technology-platform").fadeOut();
	$("#technology-platform2").fadeOut(); 
	$("#make-your-choice p.text-align-center:after").fadeOut(); 
	
	$("#make-your-choice p").addClass("arrow-adjustment");
	$("#pricing-summary-page").fadeOut(); 
	$("#pricing-summary-page2").fadeOut(); 
	$("#pricing-summary-page3").fadeOut(); 
	$("#pricing-summary-page4").fadeOut(); 
	
	//$("#primary-market").val('');
	//$("#primary-market").attr("placeholder", "Oklahoma City");
	
	$("#team-number").val('single-agent');
	$("#listing-price-target").val('0');	
	$("#slide").val('0');	
	$("#database-number").val('1000');
	$("#sphere-question").val('yes');
	
	$("#database-number").removeClass("border-red");
	$(".capped-message").removeClass("show-capped-msg");	
	
	$("#database-monthly-result3").text("75");	

	$("#sphere-budget, .summary-sphere-budget").text("75");
	$(".summary-sphere-content").text("$0.50");
	$(".summary-sphere-content2").text("175");
	$("#estimated-db-lead-count").text("1,000");	
	$("#estimated-db-lead-count2").text("1,000");	
	$("#db-cost-main").text("0.15");	
	
	$("#estimated-sphere-count-no, #estimated-sphere-count2-no, #estimated-sphere-count3-no").hide();
	$("#estimated-sphere-count, #estimated-sphere-count2, #estimated-sphere-count3").show();
});

$('#database-number').on('click focusin', function() {
    this.value = '';
});



//primary  market validation
$('#step2').on('click', function () {
	var getmarket = $("#primary-market").val();
    var value = $('#primary-market').filter(function () {
        return this.value != '';
    });

    if (value.length == 0) {
		$('.required').addClass('important-red');
		$('#primary-market').addClass('border-red');		
    } else if (value.length > 0) {
		$('#primary-market').removeClass('border-red');
		$('.required').removeClass('important-red');
		
		$(".slide1").fadeOut();		
		$(".loading").fadeIn();	
		$(".loading").delay(300).fadeOut();	
		$(".slide2").animate({opacity:0});
		$(".slide2").fadeIn();   
		$(".slide2").delay(400).animate({opacity:1});
		
		
        $(".primary-market-summary2").html(getmarket);
		
       } else {
			$('.required').addClass('important-red');
			$('#primary-market').addClass('border-red');	
	   }

});



//CAPING VALIDATIONS
function cappingvalidation(){
	var checkslide2 = $("#slide").val();
	var varcap1 = $('#database-monthly-result').text();
	var varcap2 = $('#sphere-budget').text();
	var addcap = parseFloat(varcap1.replace(',', '')) + parseInt(varcap2);
	var startercap = 600;
	var lvl1cap = 1200;
	
	if ((checkslide2 == 0) && (addcap > startercap )){
		$("#database-number").addClass("border-red");
		$(".capped-message").addClass("show-capped-msg");
		$('html, body').animate({ scrollTop: $("#estimated-lead-budget").offset().top }, 500);
		$(".capped-license").text("Starter License");
	} else if ((checkslide2 == 1) && (addcap > lvl1cap )){
		$("#database-number").addClass("border-red");
		$(".capped-message").addClass("show-capped-msg");
		$('html, body').animate({ scrollTop: $("#estimated-lead-budget").offset().top }, 500);
		$(".capped-license").text("Level 1 License");
	} else {
		$("#database-number").removeClass("border-red");
		$(".capped-message").removeClass("show-capped-msg");
	}
}

$('#database-number').keyup(cappingvalidation);
$('#summary-page').click(cappingvalidation);
$('#slide').change(cappingvalidation);
$('#sphere-question').change(cappingvalidation);



//CAPING VALIDATION 2
$("#summary-page").click(function(){
	var checkslide2 = $("#slide").val();
	var varcap1 = $('#database-monthly-result').text();
	var varcap2 = $('#sphere-budget').text();
	var addcap = parseFloat(varcap1.replace(',', '')) + parseInt(varcap2);
	var startercap = 600;
	var lvl1cap = 1200;
	
	if ((checkslide2 == 0) && (addcap > startercap )){
		$("#database-number").addClass("border-red");
		$(".capped-message").addClass("show-capped-msg");
		$('html, body').animate({ scrollTop: $("#estimated-lead-budget").offset().top }, 500);
		$(".capped-license").text("Starter License");
	} else if ((checkslide2 == 1) && (addcap > lvl1cap )){
		$("#database-number").addClass("border-red");
		$(".capped-message").addClass("show-capped-msg");
		$('html, body').animate({ scrollTop: $("#estimated-lead-budget").offset().top }, 500);
		$(".capped-license").text("Level 1 License");
	} else {
		$("#database-number").removeClass("border-red");
		$(".capped-message").removeClass("show-capped-msg");
		
		$(".slide2").animate({opacity:0});
		$(".loading").fadeIn();	
		$(".loading").delay(400).fadeOut();	
		$(".slide2").fadeOut();	
		$("#digital-marketing").delay(600).fadeOut();	

		$(".pricing-summary-page").animate({opacity:0});
		$(".pricing-summary-page").fadeIn();   
		$(".pricing-summary-page").delay(400).animate({opacity:1}); 		
	}
});
