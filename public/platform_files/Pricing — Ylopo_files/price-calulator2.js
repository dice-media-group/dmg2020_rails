 //CPL CAlCULATION
	$("#estimate-low, .summary-low-cost").text("4");
	$("#estimate-high, .summary-high-cost").text("6");
	$(".meter-result").text("Moderately");
	$(".meter-result2").text("Moderate");
	$(".meter-result, .meter-result2").addClass("color1");
   
    $("#listing-price-target").change(function() {
        if ($(this).val() == "0") {
            $(".meter-result, .meter-result2").addClass("color1");
            $(".meter-result, .meter-result2").removeClass("color2");
            $(".meter-result, .meter-result2").removeClass("color3");
            $(".meter-result, .meter-result2").removeClass("color4");
            $(".meter-result, .meter-result2").removeClass("color5");

            $(".summary-lead-gen-cost").text("$4 - $6");
            $("#estimate-low, .summary-low-cost").text("4");
            $("#estimate-high, .summary-high-cost").text("6");

            $(".meter-result").text("Moderately");
            $(".meter-result2").text("Moderate");
            $("#meter-price").text("$4 - $6");
            $(".lead-generation-meter-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/moderate.png");
        } else if ($(this).val() == "1") {
            $(".meter-result, .meter-result2").addClass("color2");
            $(".meter-result, .meter-result2").removeClass("color1");
            $(".meter-result, .meter-result2").removeClass("color3");
            $(".meter-result, .meter-result2").removeClass("color4");
            $(".meter-result, .meter-result2").removeClass("color5");

            $(".summary-lead-gen-cost").text("$6 - $8");
            $("#estimate-low, .summary-low-cost").text("6");
            $("#estimate-high, .summary-high-cost").text("8");

            $(".meter-result").text("Moderately");
            $(".meter-result2").text("Moderate");
            $("#meter-price").text("$6 - $8");
            $(".lead-generation-meter-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/moderate2.png");
        } else if ($(this).val() == "2") {
            $(".meter-result, .meter-result2").addClass("color3");
            $(".meter-result, .meter-result2").removeClass("color2");
            $(".meter-result, .meter-result2").removeClass("color1");
            $(".meter-result, .meter-result2").removeClass("color4");
            $(".meter-result, .meter-result2").removeClass("color5");

            $(".summary-lead-gen-cost").text("$8 - $12");
            $("#estimate-low, .summary-low-cost").text("8");
            $("#estimate-high, .summary-high-cost").text("12");

            $(".meter-result").text("Highly");
            $(".meter-result2").text("High");
            $("#meter-price").text("$8 - $12");

            $(".lead-generation-meter-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/high.png");
        } else if ($(this).val() == "3") {
            $(".meter-result, .meter-result2").addClass("color4");
            $(".meter-result, .meter-result2").removeClass("color2");
            $(".meter-result, .meter-result2").removeClass("color3");
            $(".meter-result, .meter-result2").removeClass("color1");
            $(".meter-result, .meter-result2").removeClass("color5");

            $(".summary-lead-gen-cost").text("$10 - $15");
            $("#estimate-low, .summary-low-cost").text("10");
            $("#estimate-high, .summary-high-cost").text("15");

            $(".meter-result").text("Highly");
            $(".meter-result2").text("High");
            $("#meter-price").text("$10 - $15");
            $(".lead-generation-meter-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/very-high.png");
        } else if ($(this).val() == "4") {
            $(".meter-result, .meter-result2").addClass("color5");
            $(".meter-result, .meter-result2").removeClass("color2");
            $(".meter-result, .meter-result2").removeClass("color3");
            $(".meter-result, .meter-result2").removeClass("color4");
            $(".meter-result, .meter-result2").removeClass("color1");

            $(".summary-lead-gen-cost").text("$15 - $20");
            $("#estimate-low, .summary-low-cost").text("15");
            $("#estimate-high, .summary-high-cost").text("20");

            $(".meter-result, .meter-result2").text("Extremely High");
            $("#meter-price").text("$15 - $20");
            $(".lead-generation-meter-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/very-high2.png");
        } else {
            $(".meter-result, .meter-result2").addClass("color1");
            $(".meter-result, .meter-result2").removeClass("color2");
            $(".meter-result, .meter-result2").removeClass("color3");
            $(".meter-result, .meter-result2").removeClass("color4");
            $(".meter-result, .meter-result2").removeClass("color5");

            $(".summary-lead-gen-cost").text("$4 - $6");
            $("#estimate-low, .summary-low-cost").text("4");
            $("#estimate-high, .summary-high-cost").text("6");

            $(".meter-result").text("Moderate");
            $(".meter-result2").text("Moderate");
            $("#meter-price").text("$4 - $6");
            $(".lead-generation-meter-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/moderate.png");
        }
    });

	
    //ACTUAL COMPUTATION OF LEADS
    $("#step2").click(function() {
        var estimatedLow = parseInt($('#estimate-low').text());
        var estimatedHigh = parseInt($('#estimate-high').text());
        var dividebythis = $('.estimated-lead-content').text();

        var mainlow = (parseInt(dividebythis.replace(',', '')) / estimatedHigh).toFixed(0);
        var mainhigh = (parseInt(dividebythis.replace(',', '')) / estimatedLow).toFixed(0);
        $('.estimated-leads-low2, .summary-low-lead-gen-estimate').text(mainlow);
        $('.estimated-leads-high2, .summary-high-lead-gen-estimate').text(mainhigh);
    });
	
$("#slide").val("0");
$(".ticks div").removeClass("active-slide");
$(".ticks div:nth-child(1)").addClass("active-slide");
$("#ylopo-fee-price, #final-ylopo-feee").text("495");		

    $("#team-number").change(function() {
        if ($(this).val() == "single-agent") {
            $("#primary-license-summary, .ylopo-package").addClass("color1b");
            $("#primary-license-summary, .ylopo-package").removeClass("color2b");
            $("#primary-license-summary, .ylopo-package").removeClass("color3b");
            $("#primary-license-summary, .ylopo-package").removeClass("color4b");
            $("#primary-license-summary, .ylopo-package").removeClass("color5b");
			
            $("#slide").val("0");
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(1)").addClass("active-slide");
			
			$("#estimated-lead-budget, .estimated-lead-content, .summary-lead-gen-budget, .new-lead-gen-final-quote").text("300");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/starter-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Starter License");
			$("#ylopo-fee-price, #final-ylopo-feee").text("495");
			
        } else if ($(this).val() == "small-team") {
            $("#primary-license-summary, .ylopo-package").addClass("color2b");
            $("#primary-license-summary, .ylopo-package").removeClass("color1b");
            $("#primary-license-summary, .ylopo-package").removeClass("color3b");
            $("#primary-license-summary, .ylopo-package").removeClass("color4b");
            $("#primary-license-summary, .ylopo-package").removeClass("color5b");
            $("#slide").val("1");
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(2)").addClass("active-slide");
			
			$("#estimated-lead-budget, .estimated-lead-content, .summary-lead-gen-budget, .new-lead-gen-final-quote").text("600");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-1-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 1 License");
			$("#ylopo-fee-price, #final-ylopo-feee").text("795");
			
        } else if ($(this).val() == "big-team") {
            $("#primary-license-summary, .ylopo-package").addClass("color3b");
            $("#primary-license-summary, .ylopo-package").removeClass("color2b");
            $("#primary-license-summary, .ylopo-package").removeClass("color1b");
            $("#primary-license-summary, .ylopo-package").removeClass("color4b");
            $("#primary-license-summary, .ylopo-package").removeClass("color5b");
            $("#slide").val("2");
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(3)").addClass("active-slide");
			
			$("#estimated-lead-budget, .estimated-lead-content, .summary-lead-gen-budget, .new-lead-gen-final-quote").text("1,200");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-2-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 2 License");	
			$("#ylopo-fee-price, #final-ylopo-feee").text("1,195");			
			
        } else if ($(this).val() == "big-team2") {
            $("#primary-license-summary, .ylopo-package").addClass("color4b");
            $("#primary-license-summary, .ylopo-package").removeClass("color3b");
            $("#primary-license-summary, .ylopo-package").removeClass("color2b");
            $("#primary-license-summary, .ylopo-package").removeClass("color1b");
            $("#primary-license-summary, .ylopo-package").removeClass("color5b");
            $("#slide").val("3");
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(4)").addClass("active-slide");
			
			$("#estimated-lead-budget, .estimated-lead-content, .summary-lead-gen-budget, .new-lead-gen-final-quote").text("1,800");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-3-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 3 License");
			$("#ylopo-fee-price, #final-ylopo-feee").text("1,595");
			
        } else if ($(this).val() == "Brokerage-level") {
            $("#primary-license-summary, .ylopo-package").addClass("color5b");
            $("#primary-license-summary, .ylopo-package").removeClass("color4b");
            $("#primary-license-summary, .ylopo-package").removeClass("color3b");
            $("#primary-license-summary, .ylopo-package").removeClass("color2b");
            $("#primary-license-summary, .ylopo-package").removeClass("color1b");
            $("#slide").val("4");
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(5)").addClass("active-slide");
			
			$("#estimated-lead-budget, .estimated-lead-content, .summary-lead-gen-budget, .new-lead-gen-final-quote").text("2,400");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-4-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 4 License");	
			$("#ylopo-fee-price, #final-ylopo-feee").text("1,995");			
			
        } else {
            $("#ylopo-fee-price, #final-ylopo-feee").text("795");
            $("#estimated-lead-budget, .summary-lead-gen-budget, .estimated-lead-content, .new-lead-gen-final-quote").text("300");
            $(".estimated-leads-count, .summary-lead-gen-estimate, .estimated-lead-content2").text("25 - 37.5");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/starter-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Starter License");
            $("#slide").val("4");
			
        }
    });


    $("#estimated-sphere-count-no, #estimated-sphere-count2-no, #estimated-sphere-count3-no").hide();
    $("#estimated-sphere-count, #estimated-sphere-count2, #estimated-sphere-count3").show();

    $("#sphere-question").change(function() {
        if ($(this).val() == "yes") {

            $("#sphere-budget, .summary-sphere-budget").text("75");
            $(".summary-sphere-content").text("$0.50");
            $(".summary-sphere-content2").text("175");

            $("#estimated-sphere-count-no, #estimated-sphere-count2-no, #estimated-sphere-count3-no").hide();
            $("#estimated-sphere-count, #estimated-sphere-count2, #estimated-sphere-count3").show();

        } else if ($(this).val() == "no") {
            $("#sphere-budget, .summary-sphere-budget").text("0");
            $(".summary-sphere-content").text("$0");
            $(".summary-sphere-content2").text("0");


            $("#estimated-sphere-count-no, #estimated-sphere-count2-no, #estimated-sphere-count3-no").show();
            $("#estimated-sphere-count, #estimated-sphere-count2, #estimated-sphere-count3").hide();

        } else {
            $("#sphere-budget, .summary-sphere-budget").text("75");
            $(".summary-sphere-content").text("$0.50");
            $(".summary-sphere-content2").text("200");
        }
    });


    // database CALCULATION
    var userInput = document.getElementById('database-number');
    userInput.addEventListener('keyup', function(e) {
        if (isNumeric(this.value) === true) {

            var divide = Math.round((this.value / 1000) * 75).toLocaleString();
            var dbcost = ((this.value / 1000) * 0.15).toFixed(2);
            var multiplied = Math.round(this.value).toLocaleString();          
			
            document.getElementById("db-cost-main").innerHTML = dbcost;
            document.getElementById("db-cost-main2").innerHTML = dbcost;
            document.getElementById("estimated-db-lead-count").innerHTML = multiplied;
            document.getElementById("estimated-db-lead-count2").innerHTML = multiplied;
            document.getElementById("estimated-db-lead-count3").innerHTML = multiplied;

            document.getElementById('database-monthly-result').innerHTML = divide;
            document.getElementById('database-monthly-result2').innerHTML = divide;
            document.getElementById('database-monthly-result3').innerHTML = divide;
            document.getElementById('database-monthly-result4').innerHTML = divide;
            document.getElementById('database-monthly-result5').innerHTML = divide;			
        } else {

            document.getElementById("estimated-db-lead-count").innerHTML = '0';
            document.getElementById("estimated-db-lead-count2").innerHTML = '0';
            document.getElementById("estimated-db-lead-count3").innerHTML = '0';

            document.getElementById('database-monthly-result').innerHTML = '0';
            document.getElementById('database-monthly-result2').innerHTML = '0';
            document.getElementById('database-monthly-result3').innerHTML = '0';
            document.getElementById('database-monthly-result4').innerHTML = '0';
            document.getElementById('database-monthly-result5').innerHTML = '0';
            document.getElementById('database-monthly-result6').innerHTML = '0';
        }		
    });
	
	function isNumeric(n) {
        return !isNaN(parseFloat(n)) && isFinite(n);
    }
		
    // SUMMARY PAGE CALCULATION
    
	$("#summary-page").click(function() {
       var num1 = $('#estimated-lead-budget').text();
		var num2 = $('#database-monthly-result').text();
		var num3 = $('#sphere-budget').text();
		var num4 = $('#final-ylopo-feee').text();
		var num5 = $('#ylopo-fee-price').text();
		var sum = parseFloat(num2.replace(',', '')) + parseFloat(num1.replace(',', '')) + parseInt(num3);
		var finalprice = sum + parseFloat(num4.replace(',', ''));


		$('#total-media-spend, #subtotal, #subtotal2, #subtotal3').text(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));           
		$('#subtotal-mobile').text(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		
		$('#final-price').text(finalprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		
		$('#final-price-mobile').text(finalprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		$('#ylopo-fee-price, #final-ylopo-feee, #final-ylopo-feee2, #final-ylopo-feee3').text(num5.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		
		
	});
	
	
	// INPUT FIELD RESTRICTION
	
	function testInput(event) {
	   var value = String.fromCharCode(event.which);
	   var pattern = new RegExp(/[a-zåäö ]/i);
	   return pattern.test(value);
	}

	$('#primary-market').bind('keypress', testInput);
