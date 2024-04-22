<%-- 
    Document   : manager
    Created on : Feb 18, 2024, 8:01:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;400;500;600;700&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.5/typed.min.js"></script>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                text-decoration: none;
                list-style: none;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }


            body{
                overflow-x: hidden;
            }

            .container{
                max-width: 1200px;
                margin: auto;
            }


            .row{
                display: flex;
                flex-wrap: wrap;
            }

            .v-center{
                align-items: center;
            }


            .header{
                position: relative;
                width: 100%;
                padding: 15px;
                display: block;
            }

            .header .item-left{
                flex: 0 0 17%;
            }
            .header .item-center{
                flex: 0 0 66%;
            }
            .header .item-right{
                flex: 0 0 17%;
                display: flex;
                justify-content: flex-end;
            }


            .header .item-right a{
                display: inline-block;
                margin-left: 17px;
                color: black;
                font-size: 15px;
            }


            .header .logo a{
                font-size: 25px;
                font-weight: 900;
                color: black;
                text-transform: uppercase;
                font-style: italic;
            }


            .header .menu > ul > li{
                display: inline-block;
                margin-left: 20px;
            }



            .header .menu > ul > li > a{
                font-size: 15px;
                color: black;
                position: relative;
                font-weight: 500;
            }


            .header .menu > ul > li .sub-menu{
                position: absolute;
                z-index: 500;
                background-color: white;
                box-shadow: -2px 2px 0px 25px white;
                margin-top: 25px;
                padding: 20px 25px;
                opacity: 0;
                visibility: hidden;
                transition: all 0.4s ease;
            }

            @media (min-width:992px){
                .header .menu > ul > li.menu-item-has-children:hover .sub-menu{
                    opacity: 1;
                    visibility: visible;
                }
            }


            .header .menu > ul > li .sub-menu.mega-menu{
                left: 50%;
                transform: translateX(-50%);
            }

            .header .menu > ul > li .sub-menu.mega-menu-column-4{
                max-width: 100%;
                width: 100%;
                display: flex;
                flex-wrap: wrap;
            }


            .header .menu > ul > li .sub-menu.mega-menu > .list-item{
                flex: 0 0 20%;
                padding: 0px 15px;
            }



            .header .menu > ul > li .sub-menu.mega-menu > .list-item .title{
                font-size: 18.5px;
                text-transform: uppercase;
                letter-spacing: -1px;
                color: red;
            }


            .header .menu > ul > li .sub-menu.mega-menu > .list-item.text-center .title{
                text-align: center;
                margin: 5px 0;
            }

            .header .menu > ul > li .sub-menu.mega-menu > .list-item > ul > li{
                display: block;
                margin: 0;
                line-height: 30px;
            }


            .header .menu > ul > li .sub-menu.mega-menu > .list-item > ul > li > a{
                font-size: 15px;
                color: #555;
            }

            .header .menu > ul > li .sub-menu.mega-menu > .list-item img{
                max-width: 100%;
                width: 100%;
                height: 100%;
                object-fit: cover;
                vertical-align: middle;
            }


            .banner-section{
                display: block;
                background-image:linear-gradient(to bottom, rgba(0,0,0,0.3),rgba(0,0,0,0.9)), url('https://i.pinimg.com/564x/87/df/3d/87df3d9bf74103e975da42e1173465aa.jpg');
                background-size: cover;
                width: 100%;
                height: 800px;
            }

            .mobile-menu-head,
            .mobile-menu-tigger{
                display: none;
            }


            /**/
            .product-list{
                padding: 100px 15px;
                min-width: 100px;

            }


            .product-title{
                position: relative;
                text-align: center;
                margin: 0 auto 80px;
                line-height: 60px;
                color: rgb(212, 56, 39);
                font-size: 30px;
            }

            .product-title:after{
                content: '';
                position: absolute;
                bottom: -6px;
                left: 50%;
                transform: translateX(-50%);
                background-color: rgb(212, 56, 39);
                width: 50px;
                height: 10px;
            }


            .product-list .item{
                position: relative;
                flex-basis: 25%;
                max-width: 25%;
                margin-bottom: 50px;
                padding: 0px 15px;
            }


            .product-list .product .product-thumb img{
                max-width: 100%;
                width: 100%;
                height: 400px;
                object-fit: cover;
                cursor: pointer;
            }


            .product-list .product .product-info{
                text-align: center;
            }


            .product-list .product .product-info .product-name{
                font-size: 15px;
                margin: 5px 0;
                text-transform: uppercase;
                font-weight: bolder;

            }

            .product-price{
                font-weight: 900;
                display: inline-block;
                /*margin: 0px 5px;*/
                color: rgb(212, 56, 39);
            }

            .product .product-info .first{
                color: rgb(212, 56, 39);
                font-size: 15px;
                text-decoration: line-through;
            }


            .product-list .product .rating{
                color: rgb(212, 56, 39);
            }


            .product-list .product .off-info .sm-title{
                position: absolute;
                top: 0;
                left: 15px;
                background-color: rgb(212, 56, 39);
                color: white;
                padding: 5px 0;
                writing-mode: vertical-lr;
                transform: rotate(180deg);
                font-size: 17px;
                cursor: pointer;
                z-index: 1;
            }


            .product-list .product .product-thumb{
                position: relative;
            }

            .product-list .product .product-thumb .product-button{
                position: absolute;
                left: 0;
                bottom: 20px;
                width: 100%;
                text-align: center;
                z-index: 10;
                transform: translateY(100%);
                opacity: 0;
                transition: all 0.3s ease;
            }

            .product-list .product:hover .product-thumb .product-button{
                opacity: 1;
                transform: translateY(0%);
            }


            .product-list .product .product-thumb .product-button a{
                display: inline-block;
                width: 40px;
                height: 40px;
                background-color: rgb(195, 34, 16);
                color: white;
            }

            .product-list .product .product-thumb .product-button a .fas,
            .product-list .product .product-thumb .product-button a .far{
                line-height: 38px;
            }



            .product-list .product .product-thumb .product-styles{
                position: absolute;
                top: 15px;
                right: 15px;
                opacity: 0;
                z-index: 10;
                transform: opacity 0.3s ease;
            }

            .product-list .product:hover .product-thumb .product-styles{
                opacity: 1;
            }


            .product-list .product .product-thumb .product-styles span{
                position: relative;
                width: 10px;
                height: 10px;
                display: block;
                margin-bottom: 9px;
                border-radius: 50%;
                cursor: pointer;
            }

            .product-list .product .product-thumb .product-styles span.active-style:before{
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 16px;
                height: 16px;
                border: 1px solid black;
                margin-top: -3px;
                margin-left: -3px;
                border-radius: 50%;
                box-sizing: border-box;
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


            /**/

            @media (max-width:991px){
                .header .item-center{
                    order: 3;
                    flex: 0 0 100%;
                }

                .header .item-right,
                .header .item-left{
                    flex:  0 0 auto;
                }

                .v-center{
                    justify-content: space-between;
                }

                .header .mobile-menu-trigger{
                    display: flex;
                    width: 30px;
                    height: 30px;
                    margin-left: 15px;
                    justify-content: center;
                    align-items: center;
                    cursor: pointer;
                }

                .header .mobile-menu-trigger span{
                    position: relative;
                    display: block;
                    width: 24px;
                    height: 2px;
                    background-color: black;
                }

                .header .mobile-menu-trigger span:before,
                .header .mobile-menu-trigger span:after{
                    content: '';
                    position: absolute;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: black;
                }

                .header .mobile-menu-trigger span:before{
                    top: -6px;
                }

                .header .mobile-menu-trigger span:after{
                    top: 6px;
                }

                .header .item-right{
                    align-items: center;
                }

                .header .menu{
                    position: fixed;
                    top: 0;
                    left: 0;
                    width: 320px;
                    height: 100%;
                    background-color: white;
                    z-index: 1099;
                    overflow: hidden;
                    transform: translate(-100%);
                }

                .header .menu.active{
                    transform: translate(0%);
                }

                .header .menu > ul > li{
                    display: block;
                    margin: 0;
                    line-height: 1;
                }

                .header .menu > ul > li > a{
                    display: block;
                    height: 60px;
                    font-size: 17px;
                    line-height: 60px;
                    border-bottom: 1px solid rgba(0,0,0,0.3);
                    padding: 0px 50px 0px 15px;
                }

                .header .menu > ul > li > a i{
                    position: absolute;
                    top: 0;
                    right: 0;
                    width: 50px;
                    height: 60px;
                    line-height: 60px;
                    text-align: center;
                    transform: rotate(-90deg);
                }

                .header .menu .mobile-menu-head{
                    display: flex;
                    height: 60px;
                    justify-content: space-between;
                    align-items: center;
                    background-color: white;
                    border-bottom: 1px solid rgba(0,0,0,0.5);
                    z-index: 5012;
                    position: sticky;
                    top: 0;
                }

                .header .menu .mobile-menu-head .go-back{
                    width: 50px;
                    height: 60px;
                    line-height: 60px;
                    text-align: center;
                    font-size: 16px;
                    font-weight: 900;
                    border-right: 1px solid rgba(0,0,0,0.3);
                    cursor: pointer;
                    display: none;
                }

                .header .menu .mobile-menu-head.active .go-back{
                    display: block;
                }

                .header .menu .mobile-menu-head .current-menu-title{
                    font-size: 18px;
                    font-weight:900 ;
                    color: black;
                }

                .header .menu .mobile-menu-head .mobile-menu-close{
                    width: 50px;
                    height: 60px;
                    line-height: 60px;
                    text-align: center;
                    font-size: 17px;
                    font-weight: 900;
                    border-left: 1px solid rgba(0,0,0,0.3);
                    cursor: pointer;
                }

                .header .menu .menu-main{
                    height: 100%;
                    overflow-x: hidden;
                    overflow-y: auto;
                }

                .header .menu > ul > li .sub-menu,
                .header .menu > ul > li .sub-menu.mega-menu{
                    opacity: 1;
                    visibility: visible;
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    box-shadow: none;
                    overflow-x: auto;
                    max-width: none;
                    min-width: auto;
                    padding-top: 65px;
                    transform: translateX(0%);
                    display: none;
                }

                .header .menu > ul > li .sub-menu.active{
                    display: block;
                }

                @keyframes slideLeft{
                    0%{
                        opacity: 0;
                        transform: translateX(100%);
                    }

                    100%{
                        opacity: 1;
                        transform: translateX(0%);
                    }
                }

                @keyframes slideRight{
                    0%{
                        opacity: 1;
                        transform: translateX(0%);
                    }

                    100%{
                        opacity: 0;
                        transform: translateX(100%);
                    }
                }

                .header .menu > ul > li .sub-menu.mega-menu > .list-item{
                    flex: 0 0 100%;
                }

                .header .menu > ul > li .sub-menu.mega-menu > .list-item .title{
                    margin: 20px 0;
                }

                .header .menu > ul > li .sub-menu.mega-menu > .list-item.text-center .title{
                    margin: 20px 0;
                }

                .header .menu > ul > li .sub-menu.mega-menu > .list-item > ul > li{
                    line-height: 30px;
                }

                .header .menu > ul > li .sub-menu > ul > li > a,
                .header .menu > ul > li .sub-menu.mega-menu > .list-item > ul > li > a {
                    display: block;
                }

                .menu-overlay{
                    position: fixed;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: rgba(0,0,0,0.5);
                    z-index: 1098;
                    overflow: hidden;
                    opacity: 0;
                    visibility: hidden;
                    transition: all 0.3s ease;
                }

                .menu-overlay.active{
                    opacity: 1;
                    visibility: visible;
                }

            }

            @media (max-width:990px){
                .product-list .item{
                    flex-basis: 50%;
                    max-width: 50%;
                }
            }
            .footer {
                background: #000;
                color: #8a8a8a;
                font-size: 14px;
                padding: 60px 0 20px;
            }

            .footer p {
                color: #8a8a8a;
            }

            .footer h3 {
                color: #ffffff;
                margin-bottom: 20px;
            }

            .footer-col-1,
            .footer-col-2,
            .footer-col-3,
            .footer-col-4 {
                min-width: 250px;
                margin-bottom: 20px;
            }

            .footer-col-1 {
                flex-basis: 30%;
            }

            .footer-col-2 {
                flex: 1;
                text-align: center;
            }

            .footer-col-2 img {
                width: 100px;
                margin-bottom: 20px;
                margin-top: -40px;
            }

            .footer-col-3,
            .footer-col-4 {
                flex-basis: 12%;
                text-align: center;
            }

            ul {
                list-style-type: none;
            }

            .app-logo {
                margin-top: 20px;
            }
            .app-logo img {
                width: 140px;
            }

            .footer hr {
                border: none;
                background: #b5b5b5;
                height: 1px;
                margin: 20px 0;
            }

            .copyright {
                text-align: center;
            }

            .menu-icon {
                width: 28px;
                margin-left: 20px;
                display: none;
            }
            @import url('https://fonts.googleapis.com/css?family=Inconsolata:700');
            :root {
                font-size: calc(16px + (24 - 16)*(100vw - 320px)/(1920 - 320));
            }
            button, input {
                font: 1em Hind, sans-serif;
                line-height: 1.5em;
            }
            input {
                color: #171717;
            }
            .search-bar {
                display: flex;
            }

            .search-bar input,
            .search-btn,
            .search-btn:before,
            .search-btn:after {
                transition: all 0.25s ease-out;
            }
            .search-bar input,
            .search-btn {
                width: 3em;
                height: 3em;
            }
            .search-bar input:invalid:not(:focus),
            .search-btn {
                cursor: pointer;
            }
            .search-bar,
            .search-bar input:focus,
            .search-bar input:valid  {
                width: 100%;
            }
            .search-bar input:focus,
            .search-bar input:not(:focus) + .search-btn:focus {
                outline: transparent;
            }
            .search-bar {
                margin: auto;
                padding: 1.5em;
                justify-content: center;
                max-width: 30em;
            }
            .search-bar input {
                background: transparent;
                border-radius: 1.5em;
                box-shadow: 0 0 0 0.4em #171717 inset;
                padding: 0.75em;
                transform: translate(0.5em,0.5em) scale(0.5);
                transform-origin: 100% 0;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
            }
            .search-bar input::-webkit-search-decoration {
                -webkit-appearance: none;
            }
            .search-bar input:focus,
            .search-bar input:valid {
                background: #fff;
                border-radius: 0.375em 0 0 0.375em;
                box-shadow: 0 0 0 0.1em red inset;
                transform: scale(1);
            }
            .search-btn {
                background: #171717;
                border-radius: 0 0.75em 0.75em 0 / 0 1.5em 1.5em 0;
                padding: 0.75em;
                position: relative;
                transform: translate(0.25em,0.25em) rotate(45deg) scale(0.25,0.125);
                transform-origin: 0 50%;
            }
            .search-btn:before,
            .search-btn:after {
                content: "";
                display: block;
                opacity: 0;
                position: absolute;
            }
            .search-btn:before {
                border-radius: 50%;
                box-shadow: 0 0 0 0.2em #f1f1f1 inset;
                top: 0.75em;
                left: 0.75em;
                width: 1.2em;
                height: 1.2em;
            }
            .search-btn:after {
                background: #f1f1f1;
                border-radius: 0 0.25em 0.25em 0;
                top: 51%;
                left: 51%;
                width: 0.75em;
                height: 0.25em;
                transform: translate(0.2em,0) rotate(45deg);
                transform-origin: 0 50%;
            }
            .search-btn span {
                display: inline-block;
                overflow: hidden;
                width: 1px;
                height: 1px;
            }

            /* Active state */
            .search-bar input:focus + .search-btn,
            .search-bar input:valid + .search-btn {
                background: red;
                border-radius: 0 0.375em 0.375em 0;
                transform: scale(1);
            }
            .search-bar input:focus + .search-btn:before,
            .search-bar input:focus + .search-btn:after,
            .search-bar input:valid + .search-btn:before,
            .search-bar input:valid + .search-btn:after {
                opacity: 1;
            }
            .search-bar input:focus + .search-btn:hover,
            .search-bar input:valid + .search-btn:hover,
            .search-bar input:valid:not(:focus) + .search-btn:focus {
                background: #0c48db;
            }
            .search-bar input:focus + .search-btn:active,
            .search-bar input:valid + .search-btn:active {
                transform: translateY(1px);
            }

            @media screen and (prefers-color-scheme: dark) {
                body, input {
                    color: #f1f1f1;
                }
                body {
                    background: #171717;
                }
                .search-bar input {
                    box-shadow: 0 0 0 0.4em #f1f1f1 inset;
                }
                .search-bar input:focus,
                .search-bar input:valid {
                    background: #3d3d3d;
                    box-shadow: 0 0 0 0.1em #3d3d3d inset;
                }
                .search-btn {
                    background: red;
                }
            }
            header{
                color: crimson;
                /*background-color: black;*/
            }
            header li{
                color: crimson;
            }
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            nav{
                position: fixed;
                z-index: 99;
                width: 100%;

                background: #242526;
            }
            nav .wrapper{
                position: relative;
                max-width: 1300px;
                padding: 0px 30px;
                height: 70px;
                line-height: 70px;
                margin: auto;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }
            .wrapper .logo a{
                color: #f2f2f2;
                font-size: 30px;
                font-weight: 600;
                text-decoration: none;
            }
            .wrapper .nav-links{
                display: inline-flex;
            }
            .nav-links li{
                list-style: none;
            }
            .nav-links li a{
                color: #f2f2f2;
                text-decoration: none;
                font-size: 18px;
                font-weight: 500;
                padding: 9px 15px;
                border-radius: 5px;
                transition: all 0.3s ease;
            }
            .nav-links li a:hover{
                background: #3A3B3C;
            }
            .nav-links .mobile-item{
                display: none;
            }
            .nav-links .drop-menu{
                position: absolute;
                background: #242526;
                width: 250px;
                line-height: 45px;
                top: 85px;
                opacity: 0;
                visibility: hidden;
                box-shadow: 0 6px 10px rgba(0,0,0,0.15);
            }
            .nav-links li:hover .drop-menu,
            .nav-links li:hover .mega-box{
                transition: all 0.3s ease;
                top: 70px;
                opacity: 1;
                visibility: visible;
            }
            .drop-menu li a{
                width: 100%;
                display: block;
                padding: 0 0 0 15px;
                font-weight: 400;
                border-radius: 0px;
            }
            .mega-box{
                position: absolute;
                left: 0;
                width: 100%;
                padding: 0 30px;
                top: 85px;
                opacity: 0;
                visibility: hidden;
            }
            .mega-box .content{
                background: #242526;
                padding: 25px 20px;
                display: flex;
                width: 100%;
                justify-content: space-between;
                box-shadow: 0 6px 10px rgba(0,0,0,0.15);
            }
            .mega-box .content .row{
                width: calc(25% - 30px);
                line-height: 45px;
            }
            .content .row img{
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
            .content .row header{
                color: #f2f2f2;
                font-size: 20px;
                font-weight: 500;
            }
            .content .row .mega-links{
                margin-left: -40px;
                border-left: 1px solid rgba(255,255,255,0.09);
            }
            .row .mega-links li{
                padding: 0 20px;
            }
            .row .mega-links li a{
                padding: 0px;
                padding: 0 20px;
                color: #d9d9d9;
                font-size: 17px;
                display: block;
            }
            .row .mega-links li a:hover{
                color: #f2f2f2;
            }
            .wrapper .btn{
                color: #fff;
                font-size: 20px;
                cursor: pointer;
                display: none;
            }
            .wrapper .btn.close-btn{
                position: absolute;
                right: 30px;
                top: 10px;
            }

            @media screen and (max-width: 970px) {
                .wrapper .btn{
                    display: block;
                }
                .wrapper .nav-links{
                    position: fixed;
                    height: 100vh;
                    width: 100%;
                    max-width: 350px;
                    top: 0;
                    left: -100%;
                    background: #242526;
                    display: block;
                    padding: 50px 10px;
                    line-height: 50px;
                    overflow-y: auto;
                    box-shadow: 0px 15px 15px rgba(0,0,0,0.18);
                    transition: all 0.3s ease;
                }
                /* custom scroll bar */
                ::-webkit-scrollbar {
                    width: 10px;
                }
                ::-webkit-scrollbar-track {
                    background: #242526;
                }
                ::-webkit-scrollbar-thumb {
                    background: #3A3B3C;
                }
                #menu-btn:checked ~ .nav-links{
                    left: 0%;
                }
                #menu-btn:checked ~ .btn.menu-btn{
                    display: none;
                }
                #close-btn:checked ~ .btn.menu-btn{
                    display: block;
                }
                .nav-links li{
                    margin: 15px 10px;
                }
                .nav-links li a{
                    padding: 0 20px;
                    display: block;
                    font-size: 20px;
                }
                .nav-links .drop-menu{
                    position: static;
                    opacity: 1;
                    top: 65px;
                    visibility: visible;
                    padding-left: 20px;
                    width: 100%;
                    max-height: 0px;
                    overflow: hidden;
                    box-shadow: none;
                    transition: all 0.3s ease;
                }
                #showDrop:checked ~ .drop-menu,
                #showMega:checked ~ .mega-box{
                    max-height: 100%;
                }
                .nav-links .desktop-item{
                    display: none;
                }
                .nav-links .mobile-item{
                    display: block;
                    color: #f2f2f2;
                    font-size: 20px;
                    font-weight: 500;
                    padding-left: 20px;
                    cursor: pointer;
                    border-radius: 5px;
                    transition: all 0.3s ease;
                }
                .nav-links .mobile-item:hover{
                    background: #3A3B3C;
                }
                .drop-menu li{
                    margin: 0;
                }
                .drop-menu li a{
                    border-radius: 5px;
                    font-size: 18px;
                }
                .mega-box{
                    position: static;
                    top: 65px;
                    opacity: 1;
                    visibility: visible;
                    padding: 0 20px;
                    max-height: 0px;
                    overflow: hidden;
                    transition: all 0.3s ease;
                }
                .mega-box .content{
                    box-shadow: none;
                    flex-direction: column;
                    padding: 20px 20px 0 20px;
                }
                .mega-box .content .row{
                    width: 100%;
                    margin-bottom: 15px;
                    border-top: 1px solid rgba(255,255,255,0.08);
                }
                .mega-box .content .row:nth-child(1),
                .mega-box .content .row:nth-child(2){
                    border-top: 0px;
                }
                .content .row .mega-links{
                    border-left: 0px;
                    padding-left: 15px;
                }
                .row .mega-links li{
                    margin: 0;
                }
                .content .row header{
                    font-size: 19px;
                }
            }
            nav input{
                display: none;
            }

            .body-text{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 100%;
                text-align: center;
                padding: 0 30px;
            }
            .body-text div{
                font-size: 45px;
                font-weight: 600;
            }
        </style>
    </head>
    <body>
        <!--<header class="header">
                <div class="container">
                    <div class="row v-center">
                        <div class="header-item item-left">
                            <div class="logo"><a href="#">AUDI</a></div>
                        </div>
                        <div class="header-item item-center">
                            <div class="menu-overlay"></div>
                            <nav class="menu">
                                <div class="mobile-menu-head">
                                    <div class="go-back"><i class="fas fa-angle-left"></i></div>
                                    <div class="current-menu-title"></div>
                                    <div class="mobile-menu-close">&times;</div>
                                </div>
                                <ul class="menu-main">
                                    <li><a href="home">Home</a></li>
                                    <li>
                                        <a href="shopnow">Shop</a>
                                    </li>
        
                                   
        
                                    <li class="menu-item-has-children">
                                        <a href="#">Products <i class="fas fa-angle-down"></i></a>
                                        <div class="sub-menu mega-menu mega-menu-column-4">
                                            <div class="list-item">
                                                <h2 class="title">Type</h2>
                                                <ul>
                                                   
                                                        <li><a href=""></a></li>
                                                   
                                                    
                                                    
                                                </ul>
        
                                   
                                            </div>
                                           
        
                                            <div class="list-item">
                                                <img src="https://www.skfk-ethical-fashion.com/cdnassets/images/products/f19/dress-recycled-polyester-lakha-skfk-wdr00836-g8-ofm.jpg" alt="">
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">Support</a>
                                    </li>
        
                                    <li>
                                        <a href="#">Discover</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        
                    </div>
                </div>
            </header>-->
        <nav>
            <div class="wrapper">
                <div class="logo"><a href="#">Audi</a></div>
                <input type="radio" name="slider" id="menu-btn">
                <input type="radio" name="slider" id="close-btn">
                <ul class="nav-links">
                    <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
                    <li><a href="home"> View Home</a></li>
                    <li><a href="shopnow">View Shop</a></li>
                    <li>
                        <a href="#" class="desktop-item">Statistics</a>
                        <input type="checkbox" id="showDrop">
                        <label for="showDrop" class="mobile-item">Statistics</label>
                        <ul class="drop-menu">
                            <li><a href="#">Total Car: ${list.size()}</a></li
                            <li><a href="#">Revenue: ${revenue}</a></li>
                            <li><a href="#">Loyal Customer: ${user}</a></li>
                        </ul>
                    </li>
                    <!--      <li>
                            <a href="#" class="desktop-item">Mega Menu</a>
                            <input type="checkbox" id="showMega">
                            <label for="showMega" class="mobile-item">Mega Menu</label>
                            <div class="mega-box">
                              <div class="content">
                                <div class="row">
                                  <img src="https://fadzrinmadu.github.io/hosted-assets/responsive-mega-menu-and-dropdown-menu-using-only-html-and-css/img.jpg" alt="">
                                </div>
                                <div class="row">
                                  <header>Design Services</header>
                                  <ul class="mega-links">
                                    <li><a href="#">Graphics</a></li>
                                    <li><a href="#">Vectors</a></li>
                                    <li><a href="#">Business cards</a></li>
                                    <li><a href="#">Custom logo</a></li>
                                  </ul>
                                </div>
                                <div class="row">
                                  <header>Email Services</header>
                                  <ul class="mega-links">
                                    <li><a href="#">Personal Email</a></li>
                                    <li><a href="#">Business Email</a></li>
                                    <li><a href="#">Mobile Email</a></li>
                                    <li><a href="#">Web Marketing</a></li>
                                  </ul>
                                </div>
                                <div class="row">
                                  <header>Security services</header>
                                  <ul class="mega-links">
                                    <li><a href="#">Site Seal</a></li>
                                    <li><a href="#">VPS Hosting</a></li>
                                    <li><a href="#">Privacy Seal</a></li>
                                    <li><a href="#">Website design</a></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </li>-->
                    <li><a href="add.jsp">Add Car</a></li>
                </ul>
                <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
            </div>
        </nav>

        <section class="product-list">
            <div class="container">
                <h2 class="product-title">ALL CARS</h2>
                <div class="row">
                    <!--STRT ITEM-->
                    <section id="product1" class="section-p1">

                        <div class="pro-container">
                            <c:forEach items="${list}" var="o">
                                <div class="pro">
                                    <img src="${o.img}" alt="">
                                    <div class="product">
                                        <div class="product-thumb">
                                            <div class="product-button">
                                                <a href="option?id=${o.id}" title="MORE">
                                                    <i class="fas fa-car"></i>
                                                </a>
                                                <a href="edit?uid=${o.id}" title="EDIT">
                                                    <i class="fas fa-cog"></i>
                                                </a>
                                                <a href="#" onclick="showMess('${o.id}')" title="DELETE">
                                                    <i class="fas fa-eraser"></i>
                                                </a>


                                            </div>

                                        </div>

                                        <div class="product-info">
                                            <div class="rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <h3 class="product-name">${o.name}</h3>
                                            <p class="product-price">$${o.price}</p>


                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </section>
                </div>
            </div>


        </section>
        <script>
            function showMess(id){
                                            var op = confirm('Delete???');
                                            if(op===true){
                                                window.location.href = 'delete?xid='+id;
                                            }
                                        }
            const menu = document.querySelector(".menu");
            const menuMain = menu.querySelector(".menu-main");
            const menuTrigger = document.querySelector(".mobile-menu-trigger");
            const goBack = menu.querySelector(".go-back");
            const closeMenu = menu.querySelector(".mobile-menu-close");



            let subMenu;
            menuMain.addEventListener("click", (e) => {
                if (e.target.closest(".menu-item-has-children")) {
                    const hasChildren = e.target.closest(".menu-item-has-children");
                    showSubMenu(hasChildren)
                }
            });


            goBack.addEventListener("click", () => {
                hideSubMenu();
            })

            menuTrigger.addEventListener("click", () => {
                toggleMenu();
            })

            closeMenu.addEventListener("click", () => {
                toggleMenu();
            })

            document.querySelector(".menu-overlay").addEventListener("click", () => {
                toggleMenu();
            })

            function toggleMenu() {
                menu.classList.toggle("active");
                document.querySelector(".menu-overlay").classList.toggle("active");
            }

            function showSubMenu(hasChildren) {
                subMenu = hasChildren.querySelector(".sub-menu");
                subMenu.classList.add("active");
                subMenu.style.animation = "slideLeft 0.5s ease forwards";
                const menuTitle = hasChildren.querySelector("i").parentNode.childNodes[0].textContent;
                menu.querySelector(".current-menu-title").innerHTML = menuTitle;
                menu.querySelector(".mobile-menu-head").classList.add("active");
            }

            function hideSubMenu() {
                subMenu.style.animation = "slideRight 0.5s ease forwards";
                setTimeout(() => {
                    subMenu.classList.remove("active");
                }, 300);
                menu.querySelector(".current-menu-title").innerHTML = "";
                menu.querySelector(".mobile-menu-head").classList.remove("active");
            }

            window.onresize = function () {
                if (this.innerwidth > 991) {
                    if (menu.classList.containes("active")) {
                        toggleMenu();
                    }
                }
            }


        </script>

        <!-- Footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download Our App</h3>
                        <p>Download App for Android and iso mobile phone.</p>
                        <div class="app-logo">
                            <img src="https://i.ibb.co/KbPTYYQ/play-store.png" alt="" />
                            <img src="https://i.ibb.co/hVM4X2p/app-store.png" alt="" />
                        </div>
                    </div>

                    <div class="footer-col-2">
                        <img src="https://i.pinimg.com/564x/f9/d4/79/f9d479ef9726adcc928cd4cbabbc8664.jpg" alt="" />
                        <p>
                            Our Purpose Is To Sustainably Make the Pleasure and Benefits of
                            Sports Accessible to the Many.
                        </p>
                    </div>

                    <div class="footer-col-3">
                        <h3>Useful Links</h3>
                        <ul>
                            <li>Coupons</li>
                            <li>Blog Post</li>
                            <li>Return Policy</li>
                            <li>Join Affiliate</li>
                        </ul>
                    </div>

                    <div class="footer-col-4">
                        <h3>Follow us</h3>
                        <ul>
                            <li>Facebook</li>
                            <li>Twitter</li>
                            <li>Instagram</li>
                            <li>YouTube</li>
                        </ul>
                    </div>
                </div>
                <hr />
                <p class="copyright">Copyright &copy; 2024 - Phan Hien</p>
            </div>
        </div>


    </body>

</html>
