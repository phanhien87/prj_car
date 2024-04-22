<%-- 
    Document   : cart
    Created on : Feb 19, 2024, 10:03:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<style>
    .shopping-cart{
        padding-bottom: 50px;
        font-family: 'Montserrat', sans-serif;
    }

    .shopping-cart.dark{
        background-color: #f6f6f6;
    }

    .shopping-cart .content{
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
        background-color: white;
    }

    .shopping-cart .block-heading{
        padding-top: 50px;
        margin-bottom: 40px;
        text-align: center;
    }

    .shopping-cart .block-heading p{
        text-align: center;
        max-width: 420px;
        margin: auto;
        opacity:0.7;
    }

    .shopping-cart .dark .block-heading p{
        opacity:0.8;
    }

    .shopping-cart .block-heading h1,
    .shopping-cart .block-heading h2,
    .shopping-cart .block-heading h3 {
        margin-bottom:1.2rem;
        color: #3b99e0;
    }

    .shopping-cart .items{
        margin: auto;
    }

    .shopping-cart .items .product{
        margin-bottom: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
    }

    .shopping-cart .items .product .info{
        padding-top: 0px;
        text-align: center;
    }

    .shopping-cart .items .product .info .product-name{
        font-weight: 600;
    }

    .shopping-cart .items .product .info .product-name .product-info{
        font-size: 14px;
        margin-top: 15px;
    }

    .shopping-cart .items .product .info .product-name .product-info .value{
        font-weight: 400;
    }

    .shopping-cart .items .product .info .quantity .quantity-input{
        margin: auto;
        width: 80px;
    }

    .shopping-cart .items .product .info .price{
        margin-top: 15px;
        font-weight: bold;
        font-size: 22px;
    }

    .shopping-cart .summary{
        border-top: 2px solid #5ea4f3;
        background-color: #f7fbff;
        height: 100%;
        padding: 30px;
    }

    .shopping-cart .summary h3{
        text-align: center;
        font-size: 1.3em;
        font-weight: 600;
        padding-top: 20px;
        padding-bottom: 20px;
    }

    .shopping-cart .summary .summary-item:not(:last-of-type){
        padding-bottom: 10px;
        padding-top: 10px;
        border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    }

    .shopping-cart .summary .text{
        font-size: 1em;
        font-weight: 600;
    }

    .shopping-cart .summary .price{
        font-size: 1em;
        float: right;
    }

    .shopping-cart .summary button{
        margin-top: 20px;
    }

    @media (min-width: 768px) {
        .shopping-cart .items .product .info {
            padding-top: 25px;
            text-align: left;
        }

        .shopping-cart .items .product .info .price {
            font-weight: bold;
            font-size: 22px;
            top: 17px;
        }

        .shopping-cart .items .product .info .quantity {
            text-align: center;
        }
        .shopping-cart .items .product .info .quantity .quantity-input {
            padding: 4px 10px;
            text-align: center;
        }
    }
    h5{
        text-align: center;
        
    }
</style>
<head>
    <title>Shopping Cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>



    <main class="page">
        <section class="shopping-cart dark">
            <div class="container">
                <div class="block-heading">
                    <h2>Shopping Cart</h2>
                    <p>We hope this message finds you well. Thank you for choosing Audi store for your recent purchase. We truly appreciate your trust in our products/services.</p>
                </div>
                <h5 style="color: rgb(59, 153, 224)">${mess}</h5>
                <div>
                    <a href="shopnow">Buy More</a>
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="items">
                                <c:if test="${not empty sessionScope['cart']}">
                                    <c:forEach var="item" items="${sessionScope['cart']}" varStatus="loop">

                                        <div class="product">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <img class="img-fluid mx-auto d-block image" src="${item.car.getImg()}">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="info">
                                                        <div class="row">
                                                            <div class="col-md-5 product-name">
                                                                <div class="product-name">
                                                                    <a >${item.car.getName()}</a>
                                                                    <div class="product-info">
                                                                        <div>Price: <span class="value"><c:out value="${item.car.getPrice()}" /></span></div>
                                                                        <div>Color: <span class="value"><c:out value="${item.car.getColor()}" /></span></div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 quantity">
                                                                <label for="quantity">Quantity:</label>
                                                                <div class="quantity">
                                                                    <form action="cart" method="post" style="display:inline;">
                                                                        <input type="hidden" name="action" value="decrease">
                                                                        <input type="hidden" name="id" value="${item.car.getId_detail()}">
                                                                        <button type="submit" class="decrease">-</button>
                                                                    </form>
                                                                    <span id="quantity_${loop.index}">${item.quantity}</span>
                                                                    <form action="cart" method="post" style="display:inline;">
                                                                        <input type="hidden" name="action" value="increase">
                                                                        <input type="hidden" name="id" value="${item.car.getId_detail()}">
                                                                        <button type="submit" class="increase">+</button>
                                                                    </form>
                                                                    <form action="cart" method="post" style="display:inline;">
                                                                        <input type="hidden" name="id" value="${item.car.getId_detail()}">
                                                                        <input type="hidden" name="action" value="delete">
                                                                        <button type="submit" class="remove">Remove</button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 price">
                                                                <span>$<c:out value="${item.car.getPrice() * item.quantity}" /></span>
                                                            </div>
                                                            <c:set var="subtotal" value="${subtotal + (item.car.getPrice() * item.quantity)}" />

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <div class="summary">
                                <h3>Summary</h3>
                                <p>Subtotal: $<c:out value="${subtotal}" /></p>
                                <c:set var="discountRate" value="0.1" />
                                <c:set var="discount" value="${subtotal * discountRate}" />
                                <c:set var="discountPercentage" value="${discountRate * 100}" />
                                <p>Discount: <c:out value="${discountPercentage}%" /></p>

                                <c:set var="total" value="${subtotal - discount}" />
                                <p>Total: $<c:out value="${total}" /></p>
                                <form action="bill">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block" onclick="checkout()">Checkout</button>
                                    <input type="hidden" name="total" value="${total}">
                                   
                                </form>    

                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </section>
    </main>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
<script>
                                   document.addEventListener('DOMContentLoaded', function () {
                                       var quantityElements = document.querySelectorAll('.quantity');

                                       quantityElements.forEach(function (quantityElement) {
                                           var quantityInput = quantityElement.querySelector('span');
                                           var increaseButton = quantityElement.querySelector('.increase');
                                           var decreaseButton = quantityElement.querySelector('.decrease');

                                           increaseButton.addEventListener('click', function () {
                                               var currentQuantity = parseInt(quantityInput.textContent);
                                               quantityInput.textContent = currentQuantity + 1;
                                           });

                                           decreaseButton.addEventListener('click', function () {
                                               var currentQuantity = parseInt(quantityInput.textContent);
                                               if (currentQuantity > 1) {
                                                   quantityInput.textContent = currentQuantity - 1;
                                               }
                                           });
                                       });
                                   });
</script>
</html>


