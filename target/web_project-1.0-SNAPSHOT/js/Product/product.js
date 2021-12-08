
//Turn on off video popup
$(".close-video-popup").click(function (e) { 
    e.preventDefault();
    $(".video-player-popup").fadeOut(600);
});

$(".btn-play-video").click(function (e) { 
    e.preventDefault();
    $(".video-player-popup").fadeIn(600);
});

//Fade in/ Fade out click tabs description
$("li.description").click(function (e) { 
    e.preventDefault();
    $(".detailed-description").fadeIn(500);

    $(".description").addClass("active");

    $(".additional-infomation").removeClass("active");
    $(".size-guide").removeClass("active");
    $(".review").removeClass("active");

    $(".detailed-additional-information").fadeOut(500);
    $(".detailed-size-guide").fadeOut(500);
    $(".detailed-review").fadeOut(500);
});

$("li.additional-infomation").click(function (e) { 
    e.preventDefault();
    $(".detailed-additional-information").fadeIn(500);

    $(".additional-infomation").addClass("active");

    $(".description").removeClass("active");
    $(".size-guide").removeClass("active");
    $(".review").removeClass("active");

    $(".detailed-description").fadeOut(500);
    $(".detailed-size-guide").fadeOut(500);
    $(".detailed-review").fadeOut(500);

});

$("li.size-guide").click(function (e) { 
    e.preventDefault();
    $(".detailed-size-guide").fadeIn(500);

    $(".size-guide").addClass("active");

    $(".description").removeClass("active");
    $(".additional-infomation").removeClass("active");
    $(".review").removeClass("active");

    $(".detailed-additional-information").fadeOut(500);
    $(".detailed-description").fadeOut(500);
    $(".detailed-review").fadeOut(500);
});

$("li.review").click(function (e) { 
    e.preventDefault();
    $(".detailed-review").fadeIn(500);

    $(".review").addClass("active");

    $(".description").removeClass("active");
    $(".additional-infomation").removeClass("active");
    $(".size-guide").removeClass("active");

    $(".detailed-additional-information").fadeOut(500);
    $(".detailed-size-guide").fadeOut(500);
    $(".detailed-description").fadeOut(500);
});

//Slider
$(".slider-related-products.owl-carousel").owlCarousel({
    nav:false,
    dots:false,
    loop:false,
    autoplay: false,
    autoplayTimeout: 5000,
    responsiveClass:true,
    responsive:{
        0:{
            items:2,
            nav:false,
            dots: false,
        },
        900:{
            items:3,
            margin: 10,
            nav:false,
            dots: false
        },
        1030:{
            items:4,
            margin: 10,
            nav:false,
            dots: false
        },
        1200:{
            items:5,
            margin:6,
            nav:false,
            dots: false
        }
    }
});


