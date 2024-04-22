<%-- 
    Document   : login
    Created on : Feb 12, 2024, 9:16:30 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap");

            html {
                scroll-behavior: smooth;
            }
            #header img{
                width:  70px;

            }

            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Spartan", san-serif;
            }

            h1{
                font-size: 50px;
                line-height: 64px;
                color: #222;
            }

            h2{
                font-size: 46px;
                line-height: 54px;
                color: #222;
            }

            h4{
                font-size: 20px;
                color: #222;
            }

            h6{
                font-size: 12px;
                font-weight: 700;
            }

            p{
                font-size: 16px;
                color: #465b52;
                margin: 15px 0 20px 0
            }

            .section-p1{
                padding: 40px 80px;

            }


            .section-m1{
                padding: 40px 0;
            }

            body{
                width: 100%;
                font-family: inherit;
            }



            #header{
                position: fixed;
                width: 100%;
                overflow: hidden;
                z-index: 100;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 20px 80px;
                background-color: black;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.06)
            }

            #navbar{
                display: flex;
                align-items: center;
                justify-content: center;

            }

            .quantity{
                background-color: red;
                border-radius: 50%;
                display: flex;
                justify-content: center;
                align-items: center;
                color: #fff;
                position: absolute;
                top: -5px;
                left: 80%;
                padding: 3px 5px;
                font-size: 7px

            }

            #mobile{
                display: none;
                align-items: center
            }

            #close{
                display: none
            }

            #navbar li{
                list-style: none;
                padding: 0 20px;
                position: relative;
            }

            #navbar li a{
                text-decoration: none;
                font-size: 16px;
                font-weight: 600;
                color: red;
                transition: 0.3s ease
            }

            #navbar li a:hover,
            #navbar li a.active{
                color: #088178;
            }

            #navbar li a:hover::after,
            #navbar li a.active::after{
                content: " ";
                width: 30%;
                height: 2px;
                background: 2px;
                background-color: #088178;
                position: absolute;
                bottom: -4px;
                left: 20px;
            }

            #hero{
                background-image: url("https://images.pexels.com/photos/303317/pexels-photo-303317.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
                height: 90vh;
                width: 100%;
                background-size: cover;
                background-position: top 25% right 0;
                padding: 0 80px;
                display: flex;
                flex-direction: column;
                align-items: flex-start;
                justify-content: center;
                line-height: 1;

            }


            .inhero{
                margin-left: 420px;
                margin-top: 440px;

            }

            #hero a{
                background-image: url(https://i.postimg.cc/528H2mmS/button.png);
                background-color: transparent;
                color: #088178;
                border: 0;
                padding: 14px 80px 14px 65px;
                font-size: 18px;
                font-style: italic;
                font-weight: bold;
                text-decoration: none;
                /*  margin-top: 100px;*/
            }

            #product1{
                text-align: center;
            }

            #product1 .pro-container{
                display: flex;
                justify-content: space-between;
                padding-top: 20px;
                flex-wrap: wrap
            }

            #product1 .pro{
                width: 23%;
                min-width: 250px;
                padding: 10px 12px;
                border: 1px solid #cce7d0;
                border-radius: 25px;
                cursor: pointer;
                box-shadow: 20px 20px 30px rgba(0, 0, 0, 0.02);
                margin: 15px 0;
                transition: 0.2s ease;
                position: relative;
            }

            #product .pro:hover{
                box-shadow: 20px 20px 30px rgba(0, 0, 0, 0.06);
            }

            #product1 .pro img{
                width: 100%;
                border-radius: 20px;
            }

            #product1 .pro .des{
                text-align: start;
                padding: 10px 0;
            }

            #product1 .pro .des span{
                color: #606063;
                font-size: 12px;
            }

            #product1 .pro .des h5{
                padding-top: 7px;
                color: #1a1a1a;
                font-size: 14px;
            }

            #product1 .pro .des i{
                font-size: 12px;
                color: rgb(243, 181, 25)
            }

            #product1 .pro .des h4{
                font-size: 15px;
                padding-top: 7px;
                font-weight: 700;
                color: #088178;
            }

            #product1 .pro .cart{
                width: 40px;
                height: 40px;
                line-height: 40px;
                border-radius: 50px;
                background-color: #e8f6ea;
                font-weight: 500;
                color: #088178;
                border: 1px solid #cce7d0;
                position: absolute;
                bottom: 20px;
                right: 10px;

            }

            #banner{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-align: center;
                background-image: url(http://s3-ap-south-1.amazonaws.com/motoringwebuploads/wp-content/uploads/2019/02/28184826/Audi_Hyderabad_Exterior_2-e1551359933820.jpg );
                width: 100%;
                height: 40vh;
                background-position: bottom 10px;
                background-size: cover;
                background-position: right -10px;
            }

            #banner h4{
                color: #fff;
                font-size: 16px;
            }

            #banner h2{
                color: #fff;
                font-size: 30px;
                padding: 10px 0;
            }

            #banner h2 span{
                color: #ef3636;

            }

            button.normal{
                color: #000;
                padding: 15px 30px;
                font-weight: 400;
                font-size: 14px;
                border-radius: 4px;
                background-color: #fff;
                border: none;
                outline: none;
                transition: 0.2s;
                cursor: pointer

            }

            #banner button:hover{
                background-color: #088178;
                color: #fff;
            }
            .sm-banner_{
                margin-top: -50px;
                background-image: url(https://i.pinimg.com/564x/ba/ee/f8/baeef80ac0c1cb1c1b0448d8b90c1ff5.jpg);

            }
            #sm-banner .banner-box{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: flex-start;
                text-align: center;
                background-image: url(https://i.postimg.cc/vZ6YLxDG/b17.jpg);
                min-width: 580px;
                height: 40vh;
                background-position: center;
                background-size: cover;
                padding: 30px
            }

            #sm-banner .banner-box2{
                background-image: url(https://i.postimg.cc/gJ7FHxHv/b10.jpg)
            }

            #sm-banner{
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;

            }

            #sm-banner h4{
                color: #fff;
                font-size: 20px;
                font-weight: 300;
            }

            #sm-banner h2{
                color: #fff;
                font-size: 32px;
                font-weight: 800;
            }

            #sm-banner span{
                color: #0e0e0e;
                font-size: 16px;
                font-weight: 500;
                padding-bottom: 16px;
            }

            button.white{
                color: #000;
                padding: 15px 30px;
                font-weight: 400;
                font-size: 14px;
                border-radius: 4px;
                background-color: transparent;
                border: 1px solid #fff;
                outline: none;
                transition: 0.2s;
                cursor: pointer
            }

            #sm-banner .banner-box:hover button{
                background-color: #088178;
                color: #fff;
                border: 1px solid #088178;

            }

            #banner3{
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                padding: 0 80px;
            }

            #banner3 .banner-box{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: flex-start;
                text-align: center;
                background-image: url(https://wallpapercave.com/wp/wp3616414.jpg);
                min-width: 30%;
                height: 30vh;
                background-position: 70% 33%;
                background-size: cover;
                padding: 30px;
                margin-bottom: 20px
            }

            #banner3 h2{
                color: #fff;
                font-weight: 900;
                font-size: 22px;
            }

            #banner3 h3{
                color: #ec544e;
                font-weight: 800;
                font-size: 15px;
                margin-left: 50px;
            }

            #banner3 .banner-img2{
                background-image: url(https://wallpapercave.com/wp/wp2040203.jpg)
            }

            #banner3 .banner-img3{
                background-image: url(https://wallpapercave.com/wp/wp3616398.jpg);
                
            }

            #newsletter  {
                display: flex;
                justify-content: space-between;
                align-items: center;
                flex-wrap: wrap;
                background-image: url(https://i.pinimg.com/564x/4a/71/e6/4a71e631363fecf70a7268cd42b9773e.jpg);
                background-repeat: no-repeat;
                background-position: right 40%;
                background-color: black;
            }

            #newsletter h4{
                color: #fff;
                font-weight: 700;
                font-size: 22px;
            }

            #newsletter p{
                color: #818ea0;
                font-weight: 600;
                font-size: 14px;
            }

            #newsletter p span{
                color: #ffbd27;
            }

            #newsletter input{
                height: 3.125rem;
                width: 100%;
                font-size: 14px;
                padding: 0 1.25em;
                border: 1px solid transparent;
                border-radius: 4px;
                outline: none;
                border-top-right-radius: 0;
                border-bottom-right-radius: 0;
            }

            #newsletter button{
                background-color: #088178;
                color: #fff;
                white-space: nowrap;
                border-left-right-radius: 0;
                border-left-right-radius: 0;
            }

            #newsletter .form{
                display: flex;
                width: 40%;

            }

            footer {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                position: relative;
            }


            footer .col{
                display: flex;
                flex-direction: column;
                align-items: flex-start;
                margin-bottom: 20px;
                margin-left: 50px

            }

            footer .sec{
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;


            }

            footer .logo{
                margin-bottom: 20px;
                width: 50%;
            }

            footer h4{
                font-size: 14px;
                padding-bottom: 20px
            }

            footer p{
                font-size: 13px;
                margin: 0 0 8px 0;
            }


            footer a{
                font-size: 13px;
                text-decoration: none;
                color: #222;
                margin-bottom: 10px;
            }

            footer .follow{
                margin-top: 20px
            }

            footer .follow i{
                color: #465b52;
                padding-right: 5px;
                cursor: pointer;

            }

            footer .follow i:hover, footer a:hover {
                color: #088178;

            }

            footer .install .row img{
                border: 1px solid #088178;
                border-radius: 6px;

            }

            footer .install img{
                margin: 10px 0 15px 0
            }


            footer .copyright{
                width: 100%;
                text-align: center;

            }
            .footer_{
                display: flex;
            }
            .footer__{
                display: flex;
                margin-top: 150px;
                margin-left: 100px;
            }
            .acc{
                margin-left: 190px;
            }

            /*----------------------Media Query ----------*/


            @media (max-width: 920px) {

                .section-p1 {
                    padding: 40px 40px
                }

                #navbar{
                    display: flex;
                    flex-direction: column;
                    align-items: flex-start;
                    justify-content: flex-start;
                    position: fixed;
                    top: 0;
                    right: -300px;
                    height: 100vh;
                    width: 300px;
                    background-color: #E3E6F3;
                    box-shadow: 0 40px 60px rgba(0, 0, 0, 0.1);
                    padding: 80px 0 0 10px;
                    transition: 0.3s
                }

                #navbar.active{
                    right: 0;
                }

                #navbar li{
                    margin-bottom: 25px
                }

                #mobile{
                    display: flex;
                    align-items: center
                }
                #mobile i{
                    font-size: 32px;
                    color: #1a1a1a;
                    padding-left: 20px
                }
                body #lg-bag{
                    display: none
                }

                #close{
                    display: initial;
                    position: absolute;
                    top: -280px;
                    left: 20px;
                    color: #222;
                    font-size: 32px;
                }

                #lg-bag{
                    display: none
                }

                .quantity{
                    top: 15px;
                    left: 83%;
                }

                #hero{
                    height: 70vh;
                    padding: 0 80px;
                    background-position: top 30% right 30%
                }



                #product1 .pro-container{
                    justify-content: center
                }

                #product1 .pro{
                    margin: 15px;
                }

                #banner{
                    height: 25vh
                }

                #sm-banner .banner-box{
                    min-width: 100%;
                    height: 30vh;
                }

                #banner3{
                    padding: 0 40px
                }

                #banner3 .banner-box{
                    width: 28%
                }

                #newsletter .form {
                    width: 70%
                }

            }

            @media (max-width: 477px) {
                .section-p1{
                    padding: 20px
                }

                #header{
                    padding: 10px 30px;
                }

                .quantity{
                    top: 7px;
                    left: 80%;
                }

                #hero{
                    padding: 0 20px;
                    background-position: 55%;
                }

                h2 {
                    font-size: 30px
                }

                h1{
                    font-size: 28px
                }

                p{
                    line-height: 24px;
                    font-size: 10px;
                }

                #hero button{
                    margin-right: 10px
                }

                #feature{
                    justify-content: space-between;
                }

                #feature .fe-box{
                    width: 155px;
                    margin: 0 0 15px 0;
                }

                #product1 .pro{
                    width: 100%
                }

                #banner{
                    height: 40vh;
                }

                #sm-banner .banner-box{
                    height: 40vh;
                }

                #sm-banner .banner-box2 {
                    margin-top: 20px;
                }

                #banner3{
                    padding: 0 20px;
                }

                #banner3 .banner-box{
                    width: 100%;

                }

                #newsletter .form{
                    width:  100%
                }

                #newsletter{
                    padding: 40px 20px;
                }

                footer .copyright{
                    text-align: start;
                }
            }
        </style>
    </head>
    <body>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />


        <link rel="stylesheet" href="style.css">
        <!-------------------------Font Awesome Icons --------------->  
        <script src="https://kit.fontawesome.com/dad03e859c.js" crossorigin="anonymous"></script>
        <!----------x---------------Font Awesome Icons --------x------->

        <!----------x---------------Google font --------x------->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Alkatra&family=Berkshire+Swash&family=Comic+Neue:wght@700&family=Gentium+Book+Plus:wght@400;700&family=Lato:ital,wght@0,400;0,700;0,900;1,700&family=Lexend+Deca:wght@500&family=Lexend:wght@500&family=Montserrat:wght@500&family=Open+Sans:wght@500;800&family=Roboto:wght@100;400&family=Sue+Ellen+Francisco&family=Work+Sans:wght@400;700;900&display=swap" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900;&display:swap">
        <!----------x---------------Google font --------x----------------->

    </head>

<body>
    <section id="header">
        <a href="#"><img src="https://i.pinimg.com/236x/92/2d/f2/922df23c934f5f38a33fd333bddfe243.jpg"></a>
        <div>
            <ul id="navbar">
                <li><a href="index.html" class="active">Home</a></li>
                <li><a href="shopnow">Shop</a></li>
                <c:if test="${sessionScope.acc!=null}">
                <li><a href="logout">Logout</a></li>
                
                </c:if>
                <c:if test="${sessionScope.acc==null}">
                <li><a href="login.jsp">Login</a></li>
    
                </c:if>
                <c:if test="${sessionScope.acc==null}">
                <li><a href="">Hello Customer</a></li>
    
                </c:if>
                <c:if test="${sessionScope.acc!=null}">
                    <li><a href="">Hello ${sessionScope.acc.user}</a></li>
                
                </c:if>
                <li><a href="contact.html">Contact</a></li>
                <c:if test="${sessionScope.acc.admin!=1}">
                <li><a href="cart_.jsp" id="lg-bag"><i class="fal fa-shopping-bag"></i></a>
                    <span class="quantity">${sessionScope.cart.size()}</span>
                </li>
                </c:if>
                <c:if test="${sessionScope.acc.admin==1}">
                    <li><a href="manager">Product Management</a></li>
                
                </c:if>
 
                <li><a href="#" id="close"<i class="far fa-times"></i></a></li>
            </ul>
        </div>
<!--        <div id="mobile">
            <a href="cart_.jsp" ><i class="fal fa-shopping-bag"></i>
                <span class="quantity">${sessionScope.cart.size()}</span>
            </a>
            <i id="bar" class="fas fa-outdent"></i>
        </div>-->
    </section>
    <form>
        <section id="hero">
    </form>



</section>


<section id="product1" class="section-p1">
    <h2>Featured Cars</h2>
    <p>Spring Collection New Modern Design</p>
    <div class="pro-container">
        <c:forEach items="${list}" var="o">
            <div class="pro" >
                <img src="${o.img}" alt="">
                <div class="des">
                    <c:forEach items="${cate}" var="c">
                        <c:if test="${o.idt == c.cid}">
                            <span>${c.name}</span> 
                    
                        </c:if>
                        
                    </c:forEach>
                    
                   
                    <h5>${o.name}</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>${o.price}</h4>
                </div>
                <a href="detail?did=${o.id}"><i class="fal fa-eye cart"></i></a>
            </div>
        </c:forEach>

    </div>
</section>

<section id="banner" class="section-m1">
    <h4> Audi Store</h4>
    <h2> <span>Choose </span> your <span>Audi</span>  - From the <span>sport </span>  & <span>Design range </span></h2>
    <form action="shopnow" method="post">
        <button class="btn normal" type="submit">Shop Now</button>

    </form>

</section>

<section id="product1" class="section-p1">
    <h2>New Arrivals</h2>
    <p>Spring Collection New Modern Design</p>
    <div class="pro-container">
        <c:forEach items="${list1}" var="o1">
            <div class="pro">
                <img src="${o1.img}" alt="">
                <div class="des">
                    <c:forEach items="${cate}" var="c">
                        <c:if test="${o1.idt == c.cid}">
                            <span>${c.name}</span> 
                    
                        </c:if>
                        
                    </c:forEach>
                    <h5>${o1.name}</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>${o1.price}</h4>
                </div>
                <a href="detail?did=${o1.id}"><i class="fal fa-eye cart"></i></a>
            </div>
        </c:forEach>
    </div>
</section>

<!--<section id="sm-banner" class="section-p1"> 
    <div class="sm-banner_">
        
    
    <div class="banner-box">
    <h4>crazy deals</h4>
    <h2>buy 1 get 1 free</h2>
    <span>The best classic dress is on sales at cara</span>
    <button class="btn white">Learn More</button> 
  
  </div>
  
  <div class="banner-box banner-box2">
    <h4>spring/summer</h4>
    <h2>upcoming season</h2>
    <span>The best classic dress is on sales at cara</span>
    <button class="btn white">Collection</button> 
  
  </div>
  </div>
</section>-->

<section id="banner3" class="section-p1">
    <div class="banner-box">




    </div>

    <div class="banner-box banner-img2">




    </div>

    <div class="banner-box banner-img3">




    </div>

</section>

<section id="newsletter" class="section-p1">
    <div class="newstext">
        <h4>Innovation through Technology</h4>
        <p>Audi stands for your<span> station and power.</span> </p>
    </div>

</section>

<footer class="section-p1">
    <div class="footer_">


        <div class="col">
            <a href="#"><img class="logo" src="https://i.pinimg.com/236x/c8/5c/8e/c85c8e5ae89c61a4e34019b1f57d684d.jpg"></a>
            <h4>Contact</h4>
            <p><strong>Address:<strong>173, Trau Quy street, Gia Lam, Ha Noi</p>
                        <p><strong>Phone:</strong>+0963009178</p>
                        <p><strong>Hours:</strong>8.00 - 18.00, Mon - Sat</p>
                        <div class="follow">
                            <h4>Follow Us</h4>
                            <div class="icon">
                                <i class="fab fa-facebook-f"></i>
                                <i class="fab fa-instagram"></i>
                                <i class="fab fa-twitter"></i>
                                <i class="fab fa-youtube"></i>
                                <i class="fab fa-pinterest-p"></i>
                            </div>
                        </div>
                        </div>

                        <div class="sec">   
                            <div class="footer__">


                                <div class="col">
                                    <h4>About</h4>
                                    <a href="#">About Us</a>
                                    <a href="#">Delivery Information</a>
                                    <a href="#">Privacy Policy</a>
                                    <a href="#">Terms and Condition</a>
                                    <a href="#">Contact Us</a>
                                </div>
                                <div class="acc">


                                    <div class="col">
                                        <h4>My Account</h4>
                                        <a href="#">Sign In</a>
                                        <a href="#">View Cart</a>
                                        <a href="#">My Account</a>
                                        <a href="#">My Wishlist</a>
                                        <a href="#">Track my Order</a>
                                        <a href="#">Help</a>

                                    </div>
                                </div>
                            </div>
                            <!--    <div class="col install">
                                  <h4>Install App</h4>
                                  <p>From App Store or Google Play</p>
                             
                                  <div class="row">
                                  <img src="https://i.postimg.cc/Y2s5mLdR/app.jpg" alt="">
                                  <img src="https://i.postimg.cc/7YvyWTS6/play.jpg" alt="">
                                </div>
                                <p>Secured Payment Gateways</p>
                                <img src="https://i.postimg.cc/kgfzqVRW/pay.png" alt="">
                                   </div>-->
                        </div>

                        <div class="coypright">
                            <p> © 2024 All rights reserved! made by Phan Hiển </p>
                        </div>
                        </div>
                        </footer>

                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />


                        <script src="script.js">
                            const bar = document.getElementById('bar')
                            const close = document.getElementById('close')
                            const nav = document.getElementById('navbar')

                            if (bar) {
                                bar.addEventListener('click', () => {
                                    nav.classList.add('active')
                                })

                                if (close) {
                                    close.addEventListener('click', () => {
                                        nav.classList.remove('active')
                                    })
                                }
                            }
                        </script>

                        </body>
                        </html>
