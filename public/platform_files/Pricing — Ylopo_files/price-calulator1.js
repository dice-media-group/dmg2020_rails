    //RANGE SLIDER
    //var imageUrl = new Array();
    // imageUrl[0] = 'http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/moderate.png';
    // imageUrl[1] = 'http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/moderate2.png';
    // imageUrl[2] = 'http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/high.png';
    // imageUrl[3] = 'http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/very-high.png';
    // imageUrl[4] = 'http://ylopo.com.s3-website-us-west-2.amazonaws.com/image-file/very-high2.png';
    // $(document).on('input change', '#slide', function() { //listen to slider changes
    //     var v = $(this).val(); //getting slider val
    //     $('#sliderStatus').html($(this).val());
    //     $("#meter").prop("src", imageUrl[v]);
    // });

    function updateSlider() {
        var value = $("#slide").val();
        if (value == 0) {
            $(".ylopo-package, #primary-license-summary").addClass("color1b");
            $(".ylopo-package, #primary-license-summary").removeClass("color2b");
            $(".ylopo-package, #primary-license-summary").removeClass("color3b");
            $(".ylopo-package, #primary-license-summary").removeClass("color4b");
            $(".ylopo-package, #primary-license-summary").removeClass("color5b");
		
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(1)").addClass("active-slide");
            $("#estimated-lead-budget, .summary-lead-gen-budget, .estimated-lead-content, .new-lead-gen-final-quote").text("300");
			$('#slide').mousemove(sliderUpdated);
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/starter-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Starter License");
			$("#ylopo-fee-price, #final-ylopo-feee").text("495");
			
        } else if (value == 1) {
            $(".ylopo-package, #primary-license-summary").addClass("color2b");
            $(".ylopo-package, #primary-license-summary").removeClass("color1b");
            $(".ylopo-package, #primary-license-summary").removeClass("color3b");
            $(".ylopo-package, #primary-license-summary").removeClass("color4b");
            $(".ylopo-package, #primary-license-summary").removeClass("color5b");
		
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(2)").addClass("active-slide");
			$('#slide').mousemove(sliderUpdated);
            $("#estimated-lead-budget , .summary-lead-gen-budget, .estimated-lead-content, .new-lead-gen-final-quote").text("600");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-1-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 1 License");
			$("#ylopo-fee-price, #final-ylopo-feee").text("795");
			
        } else if (value == 2) {
            $(".ylopo-package, #primary-license-summary").addClass("color3b");
            $(".ylopo-package, #primary-license-summary").removeClass("color2b");
            $(".ylopo-package, #primary-license-summary").removeClass("color1b");
            $(".ylopo-package, #primary-license-summary").removeClass("color4b");
            $(".ylopo-package, #primary-license-summary").removeClass("color5b");
		
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(3)").addClass("active-slide");
			$('#slide').mousemove(sliderUpdated);

            $("#estimated-lead-budget , .summary-lead-gen-budget, .estimated-lead-content, .new-lead-gen-final-quote").text("1,200");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-2-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 2 License");
			$("#ylopo-fee-price, #final-ylopo-feee").text("1,195");

        } else if (value == 3) {
            $(".ylopo-package, #primary-license-summary").addClass("color4b");
            $(".ylopo-package, #primary-license-summary").removeClass("color2b");
            $(".ylopo-package, #primary-license-summary").removeClass("color3b");
            $(".ylopo-package, #primary-license-summary").removeClass("color1b");
            $(".ylopo-package, #primary-license-summary").removeClass("color5b");
			
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(4)").addClass("active-slide");
			$('#slide').mousemove(sliderUpdated);
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-3-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 3 License");

            $("#estimated-lead-budget , .summary-lead-gen-budget, .estimated-lead-content, .new-lead-gen-final-quote").text("1,800");
			$("#ylopo-fee-price, #final-ylopo-feee").text("1,595");
			
        } else {
			$(".ylopo-package, #primary-license-summary").addClass("color5b");
            $(".ylopo-package, #primary-license-summary").removeClass("color2b");
            $(".ylopo-package, #primary-license-summary").removeClass("color3b");
            $(".ylopo-package, #primary-license-summary").removeClass("color4b");
            $(".ylopo-package, #primary-license-summary").removeClass("color1b");
		
            $(".ticks div").removeClass("active-slide");
            $(".ticks div:nth-child(5)").addClass("active-slide");
			$('#slide').mousemove(sliderUpdated);
            $("#estimated-lead-budget , .summary-lead-gen-budget, .estimated-lead-content, .new-lead-gen-final-quote").text("2,400");
            $(".package-container img").attr("src", "http://ylopo.com.s3-website-us-west-2.amazonaws.com/images/level-4-license.png");
            $(".ylopo-package, #primary-license-summary").text("Ylopo Level 4 License");
			$("#ylopo-fee-price, #final-ylopo-feee").text("1,995");
        }
    }
    updateSlider();
    $('#slide').mousemove(updateSlider);
    $('#slide').change(updateSlider);
    $('#slide').input(updateSlider);


    function sliderUpdated() {
        var estimatedLow = parseInt($('#estimate-low').text());
        var estimatedHigh = parseInt($('#estimate-high').text());
        var dividebythis = $('.estimated-lead-content').text();

        var mainlow = (parseInt(dividebythis.replace(',', '')) / estimatedHigh).toFixed(0);
        var mainhigh = (parseInt(dividebythis.replace(',', '')) / estimatedLow).toFixed(0);
        $('.estimated-leads-low2, .summary-low-lead-gen-estimate').text(mainlow);
        $('.estimated-leads-high2, .summary-high-lead-gen-estimate').text(mainhigh);
    }
    sliderUpdated();
    $('#slide').mousemove(sliderUpdated);


