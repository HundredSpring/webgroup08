<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- show-cart -->
<div class="show-cart-popup">
    <div class="show-cart">
        <div class="popup-header flex a-center j-between">
            <h3>SHOPPING CART</h3>
            <a href="" class="btn-close-cart-popup">
                CLOSE
                <i class="fal fa-long-arrow-right"></i>
            </a>
        </div>
        <div class="widget-shopping-cart">
            <!-- Render Cart -->
            <ul class="cart-list">
                <!--  item -->
                <c:forEach items="${cart.items}" var="o">
                    <li class="flex  j-between">
                        <div class="left flex">
                            <a href="" class="img-product">
                                <img src="${o.getProduct().getImage()}" alt="">
                            </a>
                            <div class="info-product">
                                <a href="" class="name-product">${o.getProduct().getName()}</a>
                                <div class="quanity  flex a-center">
                                    <p class="count">${o.getQuantity()}</p>
                                    <p class="divider">X</p>
                                    <p class="price">$<span class="price-value">${o.getProduct().getPrice()}</span>.00</p>
                                </div>
                            </div>
                        </div>
                        <div class="right">
                            <div class="btn-remove-from-cart">
                                <i class="far fa-times"></i>
                            </div>
                        </div>
                    </li>
                </c:forEach>

            </ul>
            <div class="cart-total flex a-center j-between">
                <p>Subtotal:</p>
                <div class="total">$<span class="total-price">${cart.getSumTotal()}</span>.00</div>
            </div>
            <div class="cart-button flex-column">
                <a href="cart.jsp" class="btn-view-cart">View Cart</a>
                <a href="cart.jsp" class="btn-check-out">GO TO CHECKOUT</a>
            </div>
        </div>
    </div>
</div>
