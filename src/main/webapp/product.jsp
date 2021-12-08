<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logoTitle.png" type="image">
    <title>RIODE - Products</title>
     <!--  css -->
     <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
   <!--  <link rel="stylesheet" href="css/style.css"> -->
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
</head>
<body>

  <!-- video-player-popup -->
  <div class="video-player-popup">
    <div class="close-video-popup">
      <i class="fal fa-times"></i>
    </div>
    <div class="video-player">
      <video controls autoplay>
        <source src="images/Video/video.mp4" type="video/mp4">
      </video>
    </div>
  </div>

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

        <div class="login-box">
          <div class="input-group flex-column">
            <input type="email" id="email-login" name="email" placeholder="Username or Email Address *">
            <input type="password" placeholder="Password *">
          </div>
  
          <div class="checkbox-group flex a-center j-between">
            <div class="flex a-center">
              <input type="checkbox" id = "check">
              <label for="check">Remember me</label>
            </div>
            <a href="">Lost your password?</a>
          </div>
  
          <a href="" class="btn-login">LOGIN</a>
  
          <div class="divider">or Login With</div>
  
          <div class="contact">
            <ul class="flex a-center">
              <a href=""><li style="background: #dd4b39;"><i class="fab fa-google"></i></li></a>
              <a href=""><li style="background: #3b5998;"><i class="fab fa-facebook-f"></i></li></a>
              <a href=""><li style="background: #1da1f2;"><i class="fab fa-twitter"></i></li></a>
            </ul>
          </div>
  
        </div>

        <div class="register-box">
          <div class="input-group flex-column">
            <input type="text" id="username" name="username" placeholder="Username *">
            <input type="email" id="email-register" name="email" placeholder="Your Email Address *">
            <input type="password" placeholder="Password *">
          </div>
  
          <div class="checkbox-group flex a-center j-between">
            <div class="flex a-center">
              <input type="checkbox" id = "check">
              <label for="check">I agree to the privacy policy</label>
            </div>
          </div>
  
          <a href="" class="btn-login">REGISTER</a>
  
          <div class="divider">or Register With</div>
  
          <div class="contact">
            <ul class="flex a-center">
              <a href=""><li style="background: #dd4b39;"><i class="fab fa-google"></i></li></a>
              <a href=""><li style="background: #3b5998;"><i class="fab fa-facebook-f"></i></li></a>
              <a href=""><li style="background: #1da1f2;"><i class="fab fa-twitter"></i></li></a>
            </ul>
          </div>
  
        </div>

      </div>
      
    </div>
  </div>

 <!--  top-banner -->
 <div class="slider-header">
  <header>
    <div class="container flex a-center j-between">
      <div class="header-left flex a-center">
        <a class="logo" href="index.jsp"><img src="images/logoSecond.png" alt=""></a>
        <nav>
          <ul class="flex a-center j-between">
            <!--  Home -->
            <li><a href="index.jsp">Home</a></li>
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
              <a style="color:#2277cc;" href="shop">Products</a>
              <i style="color:#2277cc;" class="bi bi-chevron-down"></i>
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
</div>


  <div data-id="" class="product-id render-info-product">
    <div class="container flex">
        <div class="product-img flex">
<%--            <div class="product-img-list flex-column j-between">--%>
<%--                <img src="images/Product/CLOTHING/Dresses/IMG-01/img-01.jpg" alt="" class="img-widget-01">--%>
<%--                <img src="images/Product/CLOTHING/Dresses/IMG-01/img-02.jpg" alt="" class="img-widget-02">--%>
<%--                <img src="images/Product/CLOTHING/Dresses/IMG-01/img-03.jpg" alt="" class="img-widget-03">--%>
<%--                <img src="images/Product/CLOTHING/Dresses/IMG-01/img-04.jpg" alt="" class="img-widget-04">--%>
<%--            </div>--%>
            <div class="product-img-slider">
                <img src="${detailP.getImage()}" alt="" class="img-widget-01">
                <!-- <img src="images/Product/CLOTHING/Dresses/IMG-01/img-02.jpg" alt="" class="img-02">
                <img src="images/Product/CLOTHING/Dresses/IMG-01/img-03.jpg" alt="" class="img-03">
                <img src="images/Product/CLOTHING/Dresses/IMG-01/img-04.jpg" alt="" class="img-04"> -->
            </div>
        </div>
        <div class="product-info">
            <p class="product-navigation"><i class="fal fa-home-alt"></i> Home > Products > <span class="ctgry"></span> <span class="name-prod">${detailP.getName()}</span>. </p>
            <div class="product-info-content">
                <a href="">
                  <h1 class="product-title">${detailP.getName()}</h1>
                </a>
                <div class="product-meta">
                    <span class="sku-wrapper">
                    SKU: 
                    <span class="sku">${detailP.getSku()}</span>
                    </span>
                    <span class="posted_in">
                    CATEGORY: 
                    <a class="posted_in_text" href="">${detailP.getCategory()}</a>
                    </span>
                </div>

                <p class="range-price">$${detailP.getPrice()}.00</p>
        
                <div class="product-rating flex a-center">
                    <div class="star-rating">
                    <i class="fas fa-star checked"></i>
                    <i class="fas fa-star checked"></i>
                    <i class="fas fa-star checked"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    </div>
                    <span class="rating">( 5 Reviews )</span>
                </div>
        
                <div class="product-details">
                    <p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus liberpuro ate vol faucibus adipiscing.</p>
                </div>
        
                <table class="variations">
                    <tr class="product-color flex a-center j-between">
                    <th class="label">Color: ${detailP.getColor()}</th>
                    <th>
                        <div class="el-color"></div>
                    </th>
                    </tr>
                    <tr class="product-size flex a-center j-between">
                    <th class="label">Size: ${detailP.getSize()}</th>
                    <th>
                        <div class="el-size"></div>
                    </th>
                    </tr>
                    <tr>
                    <th><button class="btn-clean">Clean All</button></th>
                    </tr>
        
                </table>
        
                <p class="price">$<span class="into-price">340</span>.00</p>
        
        
                <div class="varication-add-to-cart flex a-center">
                    <div class="quanity flex a-center">
                        <button class="quanity-minus"> - </button>
                        <input class="input-quanity"  type="number" value="1" min="1" max="10" >
                        <button class="quanity-plus"> + </button>
                    </div>
                    <button class="btn-add-to-cart btn-add-cart flex a-center">
                        <i class="fal fa-shopping-bag"></i>
                        <a href="cart?action=addToCart&id=${detailP.getId()}">ADD TO CART</a>
                    </button>

                </div>
        
                <div class="footer-popup flex a-center">
                    <ul class="contact flex a-center">
                    <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href=""><i class="fab fa-twitter"></i></a></li>
                    <li><a href=""><i class="fab fa-pinterest-p"></i></a></li>
                    </ul>
                    <div class="divider"></div>
                    <div class="wishlist flex a-center">
                    <a href=""> <i class="fal fa-heart"></i></a>
                    <p>Add to wishlist</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

  <div class="detailed-product-description-tabs">
    <div class="container">
      <nav class="tabs">
        <ul class="flex a-center j-between">
          <li class="description active">Description</li>
          <li class="additional-infomation">Additional infomation</li>
          <li class="size-guide">Size Guide</li>
          <li class="review">Review (2)</li>
        </ul>
      </nav>
      <div class="detailed-product-box render-detailed-product-box">
        <div class="detailed-description flex j-between">
          <div class="description-content">
            <div class="features">
              <h5>Features</h5>
              <p>Praesent id enim sit amet.Tdio vulputate eleifend in in tortor. ellus massa. siti iMassa ristique sit amet condim vel, facilisis quimequistiqutiqu amet condim Dilisis Facilisis quis sapien. Praesent id enim sit amet.</p>
              <ul class="list-type-check">
                <li><i class="far fa-check"></i>Praesent id enim sit amet.Tdio vulputate</li>
                <li><i class="far fa-check"></i>Eleifend in in tortor. ellus massa.Dristique sitii</li>
                <li><i class="far fa-check"></i>Massa ristique sit amet condim vel</li>
                <li><i class="far fa-check"></i>Dilisis Facilisis quis sapien. Praesent id enim sit amet</li>
              </ul>
            </div>
            <div class="specifications">
              <h5>Specifications</h5>
              <table>
                <tr>
                  <th>Material</th>
                  <td>Praesent id enim sit amet.Tdio</td>
                </tr>
                <tr>
                  <th>Claimed Size</th>
                  <td>Praesent id enim sit</td>
                </tr>
                <tr>
                  <th>Recommended Use</th>
                  <td>Praesent id enim sit amet.Tdio vulputate eleifend in in tortor. ellus massa. siti</td>
                </tr>
                <tr>
                  <th>Manufacturer</th>
                  <td>Praesent id enim</td>
                </tr>
              </table>
            </div>
          </div>
          <div class="description-video">
            <h5>Video Description</h5>
            <div class="features-img">
              <img src="images/Video/img.jpg" alt="">
              <button class="btn-play-video">
                <i class="fal fa-play"></i>
              </button>
            </div>
            <div class="warranty-shipping-box flex a-center j-between">
              <div class="icon-box flex a-center">
                <button class="btn-click btn-lock flex"><i class="fal fa-lock-alt"></i></button>
                <div class="content">
                  <h4>2 year warranty</h4>
                  <p>Guarantee with no doubt</p>
                </div>
              </div>
              <div class="divider"></div>
              <div class="icon-box flex a-center">
                <button class="btn-click btn-truck flex"><i class="fal fa-truck-moving"></i></button>
                <div class="content">
                  <h4>Free shipping</h4>
                  <p>On orders over $50.00</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="detailed-additional-information">
          <table>
            <tr>
              <th>Brands:</th>
              <td>SLS</td>
            </tr>
            <tr>
              <th>Color:</th>
              <td>${detailP.getColor()}</td>
            </tr>
            <tr>
              <th>Size</th>
              <td>${detailP.getSize()}</td>
            </tr>
          </table>
        </div>
        <div class="detailed-size-guide flex a-center j-between">
          <img src="images/Size/img-01.png" alt="" class="img-01">
          <img src="images/Size/img-02.png" alt="" class="img-02">
        </div>
        <div class="detailed-review"></div>
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
<script src="js/Product/product.js"></script>
<script src="js/Shop/shop.js"></script>
<script src="js/main.js"></script>

</html>