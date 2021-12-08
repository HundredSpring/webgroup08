<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <!--  css -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/reset.css">
    <!--  end -->
    <!--  icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="https://kit-pro.fontawesome.com/releases/v5.15.4/css/pro.min.css" rel="stylesheet">
    <!--  end -->
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Kalam:wght@100;300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <!--  end -->
    <link rel="shortcut icon" href="images/logoTitle.png" type="image">
    <title>RIODE</title>
</head>

<body>

<jsp:include page="left.jsp"></jsp:include>

<!-- account-popup -->
<div class="account-popup">
    <div class="account">
        <div class="close-popup">
            <i class="fal fa-times"></i>
        </div>
        <div class="account-content">
            <ul class="nav-tab flex a-center">
                <li class="nav-item">
                    <a class="nav-login nav-active" href="">Login</a>
                </li>
                <li style="margin: 0px 5px;">or</li>
                <li class="nav-item">
                    <a class="nav-register" href="">Register</a>
                </li>
            </ul>

            <form class="login-signUp" action="login" method="get">
                <div class="login-box">
                <div class="input-group flex-column">
                    <p class="alert">${mess}</p>
                    <input type="text" id="email-login" name="user" placeholder="Username or Email Address *">
                    <input type="password" name="pass" placeholder="Password *">
                </div>

                <div class="checkbox-group flex a-center j-between">
                    <div class="flex a-center">
                        <input type="checkbox" id = "check">
                        <label for="check">Remember me</label>
                    </div>
                    <a href="">Lost your password?</a>
                </div>

                <button class="btn-login" type="submit">LOGIN</button>


                <div class="divider">or Login With</div>

                <div class="contact">
                    <ul class="flex a-center">
                        <a href=""><li style="background: #dd4b39;"><i class="fab fa-google"></i></li></a>
                        <a href=""><li style="background: #3b5998;"><i class="fab fa-facebook-f"></i></li></a>
                        <a href=""><li style="background: #1da1f2;"><i class="fab fa-twitter"></i></li></a>
                    </ul>
                </div>

            </div>
            </form>

            <form class="login-signUp" action="signUp" method="get">
            <div class="register-box">
                <div class="input-group flex-column">
                    <p class="alert">${mess2}</p>
                    <input type="text" id="username" name="username" placeholder="Username *">
                    <input type="email" id="email-register" name="email" placeholder="Your Email Address *">
                    <input type="password" name="password" placeholder="Password *">
                </div>

                <div class="checkbox-group flex a-center j-between">
                    <div class="flex a-center">
                        <input type="checkbox" id = "check">
                        <label for="check">I agree to the privacy policy</label>
                    </div>
                </div>

                <button class="btn-login" type="submit">REGISTER</button>

                <div class="divider">or Register With</div>

                <div class="contact">
                    <ul class="flex a-center">
                        <a href=""><li style="background: #dd4b39;"><i class="fab fa-google"></i></li></a>
                        <a href=""><li style="background: #3b5998;"><i class="fab fa-facebook-f"></i></li></a>
                        <a href=""><li style="background: #1da1f2;"><i class="fab fa-twitter"></i></li></a>
                    </ul>
                </div>
            </div>
            </form>

        </div>

    </div>
</div>

<!-- modal-popup -->
<div class="modal-popup">
    <div class="modal">
        <div class="modal-content">
            <div class="modal-body">
                <h4>UP TO <span> 20% OFF</span></h4>
                <h2>SIGN UP TO <span>RIODE</span></h2>
                <p>Subscribe to the Riode eCommerce newsletter to receive timely updates from your favorite products.</p>
                <div class="input-group flex a-center j-between">
                    <input type="email" id="email" name="email" placeholder="Email address here...">
                    <a  href="" class="btn-submit">SUBCRIBE</a>
                </div>
                <div class="checkbox-group flex a-center">
                    <input type="checkbox" id="cbox">
                    <label for="cbox">Don't show this popup again</label>
                </div>
            </div>
        </div>
        <div class="close-popup">
            <i class="fal fa-times"></i>
        </div>
    </div>
</div>


<div class="to-top">
    <div class="box">
        <i class="fal fa-arrow-up"></i>
    </div>
</div>

<!--  top-banner -->
<div class="top-banner">
    <div class="slider-header">
        <header>
            <div class="container flex a-center j-between">
                <div class="header-left flex a-center">
                    <a class="logo" href="index.jsp"><img src="images/logo.png" alt=""></a>
                    <nav>
                        <ul class="flex a-center j-between">
                            <!--  Home -->
                            <li><a  href="index.jsp" style="color:#2277cc;">Home</a></li>
                            <!-- Categories -->
                            <li>
                                <a href="">Categories</a>
                                <i class="bi bi-chevron-down"></i>
                                <ul class="menu-dropdown">
                                    <li><a href="shop?id=1">Shoes</a></li>
                                    <li><a href="shop?id=2">Bags</a></li>
                                    <li><a href="shop?id=3">Accesories</a></li>
                                    <li><a href="shop?id=4">Clothing</a></li>
                                </ul>
                            </li>
                            <!-- Products -->
                            <li>
                                <a href="shop">Products</a>
                                <i class="bi bi-chevron-down"></i>
                                <div class="mega-box">
                                    <div class="content flex j-between">
                                        <!-- row -->
                                        <div class="row flex-column">
                                            <p class="product">Shoses</p>
                                            <ul class="mega-links">
                                                <li><a href="">Sneaker</a></li>
                                                <li><a href="">Boots</a></li>
                                                <li><a href="">High Heels</a></li>
                                            </ul>
                                        </div>
                                        <!-- row -->
                                        <div class="row flex-column">
                                            <p class="product">Bags</p>
                                            <ul class="mega-links">
                                                <li><a href="">Backpacks</a></li>
                                                <li><a href="">Fashion Bags</a></li>
                                                <li><a href="">Wallet</a></li>
                                            </ul>
                                        </div>
                                        <!-- row -->
                                        <div class="row flex-column">
                                            <p class="product">Accesories</p>
                                            <ul class="mega-links">
                                                <li><a href="">Watches</a></li>
                                                <li><a href="">Belt</a></li>
                                                <li><a href="">Glasses</a></li>
                                                <li><a href="">Sock</a></li>
                                                <li><a href="">Jewelly</a></li>
                                                <li><a href="">Gloves</a></li>
                                            </ul>
                                        </div>
                                        <!-- row -->
                                        <div class="row flex-column">
                                            <p class="product">Clothing</p>
                                            <ul class="mega-links">
                                                <li><a href="">Tops</a></li>
                                                <li><a href="">Bottoms</a></li>
                                                <li><a href="">Jackets</a></li>
                                                <li><a href="">Dresses</a></li>
                                            </ul>
                                        </div>
                                        <!-- row -->
                                        <div class="row">
                                            <div class="row-img">
                                                <img src="images/bg-menu.jpg" alt="">
                                                <div class="title">
                                                    <span>SALE</span>
                                                    <p>70% off</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <!-- Pages -->
                            <li>
                                <a href="">Pages</a>
                                <i class="bi bi-chevron-down"></i>
                                <ul class="menu-dropdown">
                                    <li><a href="">About Us</a></li>
                                    <li><a href="">Contact Us</a></li>
                                    <li><a href="">Wishlist</a></li>
                                    <li><a href="">My Account</a></li>
                                </ul>
                            </li>
                            <!--  Blog -->
                            <li><a href="">Blog</a></li>
                            <!--  Blog -->
                            <li><a href="">Contact</a></li>

                            <span class="divider"></span>

                            <li class="search flex-column">
                                <i class="bi bi-search">
                                    <div class="search-box">
                                        <form class="form-search">
                                            <input class="input-search" type="text" placeholder="Search your keyword...">
                                        </form>
                                        <ul class="search-dropdown">
                                        </ul>
                                    </div>
                                </i>
                            </li>

                        </ul>
                    </nav>
                </div>
                <div class="header-right  flex a-center j-between">
                    <div class="phone flex-column">
                        <span>NEED HELP?</span>
                        <p>(123)456-7890</p>
                    </div>
                    <span class="divider"></span>
                    <div class="icon-info flex a-center">
                        <a href="" class="click-account"><i class="fal fa-user"></i></a>
                        <a href=""><i class="fal fa-heart"></i></a>
                        <a href="" class="cart-slide-left cart">
                            <i class="fal fa-shopping-bag"></i>
                            <span>
                  <div class="nos">0</div>
                </span>
                        </a>
                    </div>
                </div>
            </div>
        </header>
        <div class="slider-top-banner owl-carousel owl-theme">
            <!-- Item -->
            <div class="item">
                <img src="images/Page Home/Top Banner/banner-01.jpg" alt="">
                <div class="content flex a-center j-between" style=" right: 0; transform: translate(-20%,-50%);">
                    <div class="content-title">
                        <h4>FROM ONLINE STORE</h4>
                        <h3>Originals Comper Star. Watches</h3>
                        <div class="divider"></div>
                        <p>Free Shipping on all orders over<span> $555.00</span></p>
                        <a href="shop">
                            <button class="btn-shop-now a-center">
                                SHOP NOW
                                <i class="bi bi-arrow-right"></i>
                            </button>
                        </a>
                    </div>
                </div>
            </div>
            <!-- Item -->
            <div class="item">
                <img src="images/Page Home/Top Banner/banner-02.jpg" alt="">
                <div class="content flex a-center j-between" style=" left: 0; transform: translate(30%,-50%);">
                    <div class="content-title">
                        <h4 style="color: #2277cc;">UP TO 50% OFF</h4>
                        <h3>Discover our Fashion Collection</h3>
                        <div class="divider"></div>
                        <p>Get Free Shipping on all orders over<span> $75.00</span></p>
                        <a href="shop">
                            <button class="btn-shop-now a-center">
                                SHOP NOW
                                <i class="bi bi-arrow-right"></i>
                            </button>
                        </a>
                    </div>
                </div>
            </div>
            <!-- Item -->
            <!-- style="height: 806px;" -->
            <div class="item banner03">
                <img src="images/Page Home/Top Banner/banner-03.png" alt="">
                <div class="content flex a-center j-between">
                    <div class="content-title">
                        <h4>New Arivals</h4>
                        <h3>Essentials for all the ways you move</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
                        <a href="shop">
                            <button class="btn-shop-now a-center">
                                SHOP NOW
                                <i class="bi bi-arrow-right"></i>
                            </button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- collection-banner -->
    <div class="collection-banner slider-collection-banner owl-carousel owl-theme">
        <div class="item-1">
            <a href="">
                <img src="images/Page Home/Collection Banner/img-01.jpg" alt="">
            </a>
            <div class="content-type01">
                <h4>FOOTWEAR</h4>
                <h3>NEW DESIGN</h3>
                <p>From $16.00</p>
                <a href="shop" class="btn-shop-now a-center flex">
                    SHOP NOW
                    <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </div>
        <div class="item-2">
            <a href="">
                <img src="images/Page Home/Collection Banner/img-02.jpg" alt="">
            </a>
            <div class="content-type02">
                <h3>NEW ARRIVALS</h3>
                <p>11 PRODUCTS</p>
                <a href="shop" class="btn-shop-now a-center flex">
                    SHOP NOW
                    <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </div>
        <div class="item-3">
            <a href="">
                <img src="images/Page Home/Collection Banner/img-03.jpg" alt="">
            </a>
            <div class="content-type01">
                <h4>BIG SALE</h4>
                <h3>MID SEASON'S</h3>
                <p>Up to 70% Off</p>
                <a href="shop" class="btn-shop-now a-center flex">
                    SHOP NOW
                    <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </div>
        <div class="item-4">
            <a href="">
                <img src="images/Page Home/Collection Banner/img-04.jpg" alt="">
            </a>
            <div class="content-type02">
                <h3>TOPS & JACKET</h3>
                <p>0 PRODUCTS</p>
                <a href="shop" class="btn-shop-now a-center flex">
                    SHOP NOW
                    <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </div>
    </div>

</div>



<!-- best-sellers -->
<div class="best-sellers">
    <div class="container">
        <h2 class="main-title animateFadeFromBottom">
            <b>Best Sellers</b>
            <em>Best Sellers</em>
        </h2>
        <div class="slider-best-sellers slider-products product-list owl-carousel owl-theme">
            <!--  item-product -->
            <div class="product product-id">
                <div class="product-img flex-column">
                    <img class="view-product-details img-01" src="https://product.hstatic.net/200000195489/product/var1_4a37938049d543ca95dfe42975390cc0_master.jpg" alt="">
                    <img class="view-product-details img-02" src="https://product.hstatic.net/200000195489/product/var2_534ee6c14c6f436fbd7c1543fa9f2fe8_master.jpg" alt="">

                    <div class="img-content">
                        <span class="promotion"><span class="promotion-value">60</span>% OFF</span>
                        <ul>
                            <li>
                                <i class="fal fa-heart"></i>
                            </li>
                            <li class="render-quick-view quick-view">
                                <i class="fal fa-search"></i>
                            </li>
                        </ul>
                    </div>
                    <button class="btn-add-cart">
                        <a href="cart?action=addToCart&id=1">ADD TO CART</a>
                    </button>
                </div>
                <div class="content">
                    <p class="name-category">CLOTHING</p>
                    <p class="name-product-render">
                        <a href="detail?pid=1">CLOUD VARSITY</a>
                    </p>
                    <span class="price">$<span class="price-value">200</span>.00</span>
                    <div class="review">
                        <div class="star-rating">
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span class="rating">( 5 Reviews )</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- our-categories -->
<div class="our-categories ">
    <div class="container">
        <h2 class="main-title animateFadeFromBottom">
            <b>Our Categories</b>
            <em>Our Categories</em>
        </h2>
        <!--  owl-carousel owl-theme -->
        <div class="categories-list flex a-center j-between">
            <a href="shop?id=1">
                <div class="item">
                    <img src="images/Page Home/Background Categories/bg-01.jpg" alt="">
                    <button>
                        <h4>SHOSES</h4>
                        <a class="btn-categories shake" href="">5 Products</a>
                    </button>
                </div>
            </a>

            <a href="shop?id=2">
                <div class="item">
                    <img src="https://product.hstatic.net/200000195489/product/187424361_2004646873017060_528326160722543650_n_1fb4f41083004d6ea1d27e268fd6a33f_master.jpg" alt="">
                    <button>
                        <h4>BAGS</h4>
                        <a class="btn-categories shake" href="">8 Products</a>
                    </button>
                </div>
            </a>

            <a href="shop?id=3">
                <div class="item">
                    <img src="images/Page Home/Background Categories/bg-03.jpg" alt="">
                    <button>
                        <h4>ACCESSORIES</h4>
                        <a class="btn-categories shake" href="">7 Products</a>
                    </button>
                </div>
            </a>

            <a href="shop?id=4">
                <div class="item">
                    <img src="images/Page Home/Background Categories/bg-04.jpg" alt="">
                    <button>
                        <h4>CLOTHING</h4>
                        <a class="btn-categories shake" href="">11 Products</a>
                    </button>
                </div>
            </a>

        </div>
    </div>
</div>


<!-- Our Featured -->
<div class="our-featured ">
    <div class="container">
        <h2 class="main-title animateFadeFromBottom">
            <b>Our Featured</b>
            <em>Our Featured</em>
        </h2>
        <div class="slider-our-featured slider-products product-list owl-carousel owl-theme">
            <!--  item-product -->
            <div class="product product-id">
                <div class="product-img flex-column">
                    <img class="view-product-details img-01" src="https://product.hstatic.net/200000195489/product/z2575387020920_836d14efc7e30c6a9dcbd2a946029d31_f83c64c3ecad44a9a61a67dc8a94dea1_master.jpg" alt="">
                    <img class="view-product-details img-02" src="https://product.hstatic.net/200000195489/product/h_fdc2258567194200b5e7df1d49c231b9_master.jpg" alt="">
                    <div class="img-content">
                        <span class="promotion"><span class="promotion-value">60</span>% OFF</span>
                        <ul>
                            <li>
                                <i class="fal fa-heart"></i>
                            </li>
                            <li class="render-quick-view quick-view">
                                <i class="fal fa-search"></i>
                            </li>
                        </ul>
                    </div>
                    <button class="btn-add-cart">
                        <a href="cart?action=addToCart&id=2">ADD TO CART</a>
                    </button>
                </div>
                <div class="content">
                    <p class="name-category">CLOTHING</p>
                    <p class="name-product-render">
                        <a href="detail?pid=2">FABRIC BOMBER PINK MST</a>
                    </p>
                    <span class="price">$<span class="price-value">200</span>.00</span>
                    <div class="review">
                        <div class="star-rating">
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span class="rating">( 5 Reviews )</span>
                    </div>
                </div>
            </div>
            <!--  item-product -->
            <div class="product product-id">
                <div class="product-img flex-column">
                    <img class="view-product-details img-01" src="https://cdn-images.farfetch-contents.com/17/02/35/12/17023512_35947013_1000.jpg" alt="">
                    <img class="view-product-details img-02" src="https://cdn-images.farfetch-contents.com/17/02/35/12/17023512_35947014_1000.jpg" alt="">

                    <div class="img-content">
                        <span class="promotion"><span class="promotion-value">60</span>% OFF</span>
                        <ul>
                            <li>
                                <i class="fal fa-heart"></i>
                            </li>
                            <li class="render-quick-view quick-view">
                                <i class="fal fa-search"></i>
                            </li>
                        </ul>
                    </div>
                    <button class="btn-add-cart">
                        <a href="cart?action=addToCart&id=13">ADD TO CART</a>
                    </button>
                </div>
                <div class="content">
                    <p class="name-category">ACCESSORIES</p>
                    <p class="name-product-render">
                        <a href="detail?pid=13">Q Colour 40mm</a>
                    </p>
                    <span class="price">$<span class="price-value">200</span>.00</span>
                    <div class="review">
                        <div class="star-rating">
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span class="rating">( 5 Reviews )</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Element-Banner-01 -->
<div class="el-banner-01 flex">
    <div class="item-01">
        <div class="content">
            <h4>New Arrivals</h4>
            <h3>TRENDS FOR MEN</h3>
            <a href="shop">
                <button class="btn-shop-now">SHOP NOW<i class="bi bi-arrow-right"></i></button>
            </a>
        </div>
    </div>
    <div class="item-02">
        <div class="item-top">
            <div class="content">
                <h4>Flash Sale 50% Off</h4>
                <h3>Classic Style <span>ETT 02</span> Gunmetal</h3>
                <p>The Only Watches you’ll need...</p>
                <a href="shop">
                    <button class="btn-shop-now">SHOP NOW<i class="bi bi-arrow-right"></i></button>
                </a>
            </div>
        </div>
        <div class="item-bottom flex">
            <div class="item-bottom-left"></div>
            <div class="item-bottom-right">
                <div class="content">
                    <h3>LookBook <span>2021</span></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ...</p>
                    <a href="shop" class="btn-shop-now">SHOP NOW</a>
                </div>
            </div>
        </div>
    </div>
    <div class="item-03">
        <div class="content">
            <h4>Flash Sale</h4>
            <h3>FOR WOMEN'S</h3>
            <a href="shop">
                    <button class="btn-shop-now">SHOP NOW<i class="bi bi-arrow-right"></i></button>
            </a>
        </div>
    </div>
</div>

<!-- New-Arrivals -->
<div class="new-arrivals">
    <div class="container">
        <h2 class="main-title animateFadeFromBottom">
            <b>New Arrivals</b>
            <em>New Arrivals</em>
        </h2>
        <div class="slider-new-arrivals slider-products product-list owl-carousel owl-theme">
            <!--  item-product -->
            <div class="product product-id">
                <div class="product-img flex-column">
                    <img class="view-product-details img-01" src="https://cdn-images.farfetch-contents.com/17/02/35/12/17023512_35947013_1000.jpg" alt="">
                    <img class="view-product-details img-02" src="https://cdn-images.farfetch-contents.com/17/02/35/12/17023512_35947014_1000.jpg" alt="">
                    <div class="img-content">
                        <span class="promotion"><span class="promotion-value">60</span>% OFF</span>
                        <ul>
                            <li>
                                <i class="fal fa-heart"></i>
                            </li>
                            <li class="render-quick-view quick-view">
                                <i class="fal fa-search"></i>
                            </li>
                        </ul>
                    </div>
                    <button class="btn-add-cart">
                        <a href="cart?action=addToCart&id=13">ADD TO CART</a>
                    </button>
                </div>
                <div class="content">
                    <p class="name-category">Accesories</p>
                    <p class="name-product-render">
                        <a href="detail?pid=13">Q Colour 40mm</a>
                    </p>
                    <span class="price">$<span class="price-value">200</span>.00</span>
                    <div class="review">
                        <div class="star-rating">
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span class="rating">( 5 Reviews )</span>
                    </div>
                </div>
            </div>
            <!--  item-product -->
            <div class="product product-id">
                <div class="product-img flex-column">
                    <img class="view-product-details img-01" src="https://product.hstatic.net/200000195489/product/bia_quan_9b3413b103c84da49e54cfe421cfed95_master.jpg" alt="">
                    <img class="view-product-details img-02" src="https://product.hstatic.net/200000195489/product/z2961073765681_41530288e42e4b6ad9c030da4a2ac02b_d780126180184e97b6f73e3608cc6d62_master.jpg" alt="">

                    <div class="img-content">
                        <span class="promotion"><span class="promotion-value">60</span>% OFF</span>
                        <ul>
                            <li>
                                <i class="fal fa-heart"></i>
                            </li>
                            <li class="render-quick-view quick-view">
                                <i class="fal fa-search"></i>
                            </li>
                        </ul>
                    </div>
                    <button class="btn-add-cart">
                        <a href="cart?action=addToCart&id=5">ADD TO CART</a>
                    </button>
                </div>
                <div class="content">
                    <p class="name-category">Clothing</p>
                    <p class="name-product-render">
                        <a href="detail?pid=5">LOGO PANTS</a>
                    </p>
                    <span class="price">$<span class="price-value">200</span>.00</span>
                    <div class="review">
                        <div class="star-rating">
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span class="rating">( 5 Reviews )</span>
                    </div>
                </div>
            </div>
            <!--  item-product -->
            <div class="product product-id">
                <div class="product-img flex-column">
                    <img class="view-product-details img-01" src="https://cdn-images.farfetch-contents.com/16/81/72/51/16817251_34922291_1000.jpg" alt="">
                    <img class="view-product-details img-02" src="https://cdn-images.farfetch-contents.com/16/81/72/51/16817251_34919786_1000.jpg" alt="">

                    <div class="img-content">
                        <span class="promotion"><span class="promotion-value">60</span>% OFF</span>
                        <ul>
                            <li>
                                <i class="fal fa-heart"></i>
                            </li>
                            <li class="render-quick-view quick-view">
                                <i class="fal fa-search"></i>
                            </li>
                        </ul>
                    </div>
                    <button class="btn-add-cart">
                        <a href="cart?action=addToCart&id=8">ADD TO CART</a>
                    </button>
                </div>
                <div class="content">
                    <p class="name-category">Bags</p>
                    <p class="name-product-render">
                        <a href="detail?pid=8">La Medusa shoulder bag</a>
                    </p>
                    <span class="price">$<span class="price-value">300</span>.00</span>
                    <div class="review">
                        <div class="star-rating">
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star checked"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span class="rating">( 5 Reviews )</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Poster -->
<div class="poster">
    <div class="content">
        <h4>
            Extra
            <span><i class="fal fa-star"></i> 30% Off <i class="fal fa-star"></i></span>
            Online
        </h4>
        <h3>Summer Season Sale</h3>
        <p>Free shipping on orders over $99</p>
        <a href="shop" class="btn-shop-now">SHOP NOW</a>
    </div>
</div>

<!-- Featured Articles -->
<div class="featured-articles">
    <div class="container">
        <h2 class="main-title animateFadeFromBottom">
            <b>Featured Articles</b>
            <em>Featured Articles</em>
        </h2>
        <!-- owl-carousel owl-theme -->
        <div class="slider-featured-articles flex a-center j-between">
            <div class="item">
                <div class="post-calendar flex-column">
                    <span class="post-day">21</span>
                    <span class="post-month">SEP</span>
                </div>
                <div class="item-img">
                    <a href="">
                        <img src="images/Page Home/Featured Articles/post01.jpg" alt="">
                    </a>
                </div>
                <div class="post-detail">
                    <div class="post-title">
                        <a href="">20% Off Coupon for Cyper Week</a>
                    </div>
                    <div class="post-content">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit.…</p>
                    </div>
                    <button class="btn-read-more flex a-center">
                        <p>READ MORE</p>
                        <i class="bi bi-arrow-right"></i>
                    </button>
                </div>
            </div>
            <div class="item">
                <div class="post-calendar flex-column">
                    <span class="post-day">21</span>
                    <span class="post-month">SEP</span>
                </div>
                <div class="item-img">
                    <a href="">
                        <img src="images/Page Home/Featured Articles/post02.jpg" alt="">
                    </a>
                </div>
                <div class="post-detail">
                    <div class="post-title">
                        <a href="">30% Discount for Shoes & Bags</a>
                    </div>
                    <div class="post-content">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit.…</p>
                    </div>
                    <button class="btn-read-more flex a-center">
                        <p>READ MORE</p>
                        <i class="bi bi-arrow-right"></i>
                    </button>
                </div>
            </div>
            <div class="item">
                <div class="post-calendar flex-column">
                    <span class="post-day">21</span>
                    <span class="post-month">SEP</span>
                </div>
                <div class="item-img">
                    <a href="">
                        <img src="images/Page Home/Featured Articles/post03.jpg" alt="">
                    </a>
                </div>
                <div class="post-detail">
                    <div class="post-title">
                        <a href="">New Fashion Style</a>
                    </div>
                    <div class="post-content">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit.…</p>
                    </div>
                    <button class="btn-read-more flex a-center">
                        <p>READ MORE</p>
                        <i class="bi bi-arrow-right"></i>
                    </button>
                </div>
            </div>
            <div class="item">
                <div class="post-calendar flex-column">
                    <span class="post-day">21</span>
                    <span class="post-month">SEP</span>
                </div>
                <div class="item-img">
                    <a href="">
                        <img src="images/Page Home/Featured Articles/post04.jpg" alt="">
                    </a>
                </div>
                <div class="post-detail">
                    <div class="post-title">
                        <a href="">Summer Season Sale</a>
                    </div>
                    <div class="post-content">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit.…</p>
                    </div>
                    <button class="btn-read-more flex a-center">
                        <p>READ MORE</p>
                        <i class="bi bi-arrow-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Element-Banner-03 -->
<div class="el-banner-03">
    <div class="container">
        <div class="content flex a-center j-between">
            <div class="el-content-01">
                <h3>GET OUR PERFECT GIFT</h3>
                <h6>Special Offer Collection</h6>
                <a href="">
                    <button class="btn-shop-now">VIEW ALL COLLECTION<i class="bi bi-arrow-right"></i></button>
                </a>
            </div>
            <div class="el-content-02 slider-el-content-02-banner-03 owl-carousel owl-theme">
                <div class="item">
                    <h5>ON SHOES</h5>
                    <h4>Up to 20% Off</h4>
                    <a href="shop">
                        <button class="btn-shop-now">SHOP NOW<i class="bi bi-arrow-right"></i></button>
                    </a>
                </div>
                <div class="item">
                    <h5>ON BAGS</h5>
                    <h4>Up to 30% Off</h4>
                    <a href="shop">
                        <button class="btn-shop-now">SHOP NOW<i class="bi bi-arrow-right"></i></button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Instagram -->
<div class="instagram">
    <h2 class="main-title animateFadeFromBottom">
        <b>Instagram</b>
        <em>Instagram</em>
    </h2>
    <div class="container">
        <!--   owl-carousel owl-theme -->
        <div class="slider-instagram flex a-center j-between">
            <a href="">
                <div class="item">
                    <img src="images/Page Home/Instagram/bg-01.jpg" alt="">
                    <i class="fab fa-instagram"></i>
                </div>
            </a>

            <a href="">
                <div class="item">
                    <img src="images/Page Home/Instagram/bg-02.jpg" alt="">
                    <i class="fab fa-instagram"></i>
                </div>
            </a>

            <a href="">
                <div class="item">
                    <img src="images/Page Home/Instagram/bg-03.jpg" alt="">
                    <i class="fab fa-instagram"></i>
                </div>
            </a>

            <a href="">
                <div class="item">
                    <img src="images/Page Home/Instagram/bg-04.jpg" alt="">
                    <i class="fab fa-instagram"></i>
                </div>
            </a>

            <a href="">
                <div class="item">
                    <img src="images/Page Home/Instagram/bg-05.jpg" alt="">
                    <i class="fab fa-instagram"></i>
                </div>
            </a>



        </div>
    </div>


    <!-- Trademask -->
    <div class="trademark">
        <div class="container">
            <div class="slider-trademark-list  owl-carousel owl-theme">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/4.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/5.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/6.png" alt="">
                <img src="https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/1.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/2.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/3.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/4.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/5.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/6.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/1.png" alt="">
                <img src="	https://d-themes.com/wordpress/riode/demo-1/wp-content/uploads/sites/5/2020/09/2.png" alt="">

            </div>
        </div>
    </div>

</div>

<!-- FOOTER -->
<footer>
    <div class="container">
        <div class="footer-top flex j-between">
            <div class="footer-left flex j-between a-center">
                <div class="logo">
                    <a href=""><img src="images/logo.png" alt=""></a>
                </div>
                <!--  Get In Touch -->
                <div class="item">
                    <h4>Get In Touch</h4>
                    <ul class="content flex-column">
                        <li class="phone">
                            <h5>PHONE</h5>
                            <a href="">Toll Free (123) 456-7890</a>
                        </li>
                        <li class="email">
                            <h5>EMAIL</h5>
                            <a href="">riode@mail.com</a>
                        </li>
                        <li class="address">
                            <h5>ADDRESS</h5>
                            <p style="color: #fff;">123 Street, City, Country</p>
                        </li>
                        <li class="working-days">
                            <h5>WORKING DAYS / HOURS:</h5>
                            <p style="color: #fff;">Mon - Sun / 9:00 AM - 8:00 PM</p>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <h4>My Account</h4>
                    <ul class="content flex-column">
                        <li><a href="">Contact Us</a></li>
                        <li><a href="">Out Services</a></li>
                        <li><a href="">Payment Methods</a></li>
                        <li><a href="">Services Guide</a></li>
                        <li><a href="">Service Support</a></li>
                        <li><a href="">Privacy</a></li>
                        <li><a href="">About Riode</a></li>
                        <li> <a href="">Our Guarantees</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-right">
                <h4>Subscribe Newsletter</h4>
                <ul class="flex-column">
                    <li><p>Subscribe to Riode eCommerce newsletter to receive timely updates from your favourite products.</p></li>
                    <li class="input-group flex a-center j-between">
                        <input type="email" id="email1" name="email" placeholder="Email address here...">
                        <a  href="" class="btn-subcribe">
                            <p>SUBCRIBE  <i class="bi bi-arrow-right"></i></p>
                        </a>
                    </li>
                    <li class="contact">
                        <ul class="flex">
                            <a href=""><li class="facebook"><i class="fab fa-facebook-f"></i></li></a>
                            <a href=""><li class="twitter"><i class="fab fa-twitter"></i></li></a>
                            <a href=""><li class="instagram"><i class="fab fa-instagram"></i></li></a>
                            <a href=""><li class="google"><i class="fab fa-google-plus-g"></i></li></a>
                            <a href=""><li class="pinterest"><i class="fab fa-pinterest-p"></i></li></a>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom flex a-center j-between">
            <p>Copyright © 2021 Riode Store. All Rights Reserved.</p>
            <div class="pay">
                <img src="https://d-themes.com/wordpress/riode/sport/wp-content/uploads/sites/97/2021/01/payment-logo.png" alt="">
            </div>
        </div>
    </div>
</footer>


</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/Product/arr-product.js"></script>
<script src="js/main.js"></script>
<script src="js/Home/home.js"></script>
</html>
