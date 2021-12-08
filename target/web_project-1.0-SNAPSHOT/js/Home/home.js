//SLIDER TOP BANNER
$(".slider-top-banner.owl-carousel").owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    autoplayTimeout: 8000,
    nav: true,
    navText: [
        '<i style = "margin-left: 4.5rem;" class="owl-nav-left bi bi-arrow-left"></i>',
        '<i style = "margin-right: 4.5rem;" class="owl-nav-right bi bi-arrow-right"></i>'
    ],
    dots: false,
},4000);

$(".slider-collection-banner.owl-carousel").owlCarousel({
    loop:false,
    margin:0,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:false,
            dots: false,
            autoplay: true,
            autoplayTimeout: 4000,
        },
        576:{
            items:2,
            nav:false,
            dots: false,
            autoplay: true,
            autoplayTimeout: 4000,
        },
        768:{
            items:3,
            nav:false,
            dots: false,
            autoplay: true,
            autoplayTimeout: 4000,
        },
        992:{
            items:4,
            nav:false,
            dots: false
        }
    }
},4000);

//**SLIDER COLLECTION
$(".slider-collection.owl-carousel").owlCarousel({
    loop:true,
    margin: 10,
    autoplay: false,
    autoplayTimeout: 5000,
    margin:0,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:false,
            dots: false,
        },
        576:{
            items:1,
            nav:false,
            dots: false
        },
        768:{
            items:2,
            nav:false,
            dots: false
        },
        1050:{
            items:3,
            nav:false,
            dots: false
        }
    }
});

//SLIDER TRADEMASK 
$(".slider-trademark-list.owl-carousel").owlCarousel({
    items: 6,
    //margin: 10,
    loop: true,
    autoplay: true,
    autoplayTimeout: 3000,
    nav: false,
    dots: false,
});

//FADEIN TOTOP
$(window).scroll(function () { 
    const position = $(window).scrollTop();
    /* console.log(position) */
    if(position > 1000){
        $(".to-top").slideDown().css({
            display:"block",
        });
    } else{
        $(".to-top").slideUp();
    }
});
//To top - Animate
$(".to-top").click(function (e) { 
    e.preventDefault();
    $("html, body").animate({
        scrollTop:0,
    },
    2000,
    "easeOutCirc"
    );
});


//RENDER & CUSTOM SLIDER PRODUCT LIST
$(".slider-products.owl-carousel").owlCarousel({
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



//Slider Element Banner 03
$(".slider-el-content-02-banner-03.owl-carousel").owlCarousel({
    items: 1,
    loop: false,
    autoplay: false,
    autoplayTimeout: 8000,
    nav: true,
    navText: [
        '<i class="fal fa-chevron-left"></i>',
        '<i class="fal fa-chevron-right"></i>'
    ],
    dots: false,
},4000);







