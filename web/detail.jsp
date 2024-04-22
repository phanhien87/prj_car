<%-- 
    Document   : detail
    Created on : Feb 16, 2024, 9:19:00 PM
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
            @import url("https://fonts.googleapis.com/css?family=Karla|Space+Mono");

            :root {
                --contentHeight: 30vh;
                --sectionWidth: 700px;
            }

            * {
                outline: 0;
                box-sizing: border-box;
            }

            body {
                background-image: url(https://wallpapercave.com/wp/wp3005607.jpg);
                background-size: cover;

            }

            section {
                max-width: var(--sectionWidth);
                margin: 40px auto;
                width: 97%;
                color: #fff;
            }

            summary {
                display: block;
                cursor: pointer;
                padding: 10px;
                font-family: "Space Mono", monospace;
                font-size: 22px;
                transition: .3s;
                border-bottom: 2px solid;
                user-select: none;
            }

            details > div {
                display: flex;
                flex-wrap: wrap;
                overflow: auto;
                height: 100%;
                user-select: none;
                padding: 0 20px;
                font-family: "Karla", sans-serif;
                line-height: 1.5;
            }

            details > div > img {
                align-self: flex-start;
                max-width: 100%;
                margin-top: 20px;
            }

            details > div > p {
                flex: 1;
            }

            details[open] > summary {
                color: red;
            }

            @media (min-width: 768px) {
                details[open] > div > p {
                    opacity: 0;
                    animation-name: showContent;
                    animation-duration: 0.6s;
                    animation-delay: 0.2s;
                    animation-fill-mode: forwards;
                    margin: 0;
                    padding-left: 20px;
                }

                details[open] > div {
                    animation-name: slideDown;
                    animation-duration: 0.3s;
                    animation-fill-mode: forwards;
                }

                details[open] > div > img {
                    opacity: 0;
                    height: 100%;
                    margin: 0;
                    animation-name: showImage;
                    animation-duration: 0.3s;
                    animation-delay: 0.15s;
                    animation-fill-mode: forwards;
                }
            }

            @keyframes slideDown {
                from {
                    opacity: 0;
                    height: 0;
                    padding: 0;
                }

                to {
                    opacity: 1;
                    height: var(--contentHeight);
                    padding: 20px;
                }
            }

            @keyframes showImage {
                from {
                    opacity: 0;
                    clip-path: inset(50% 0 50% 0);
                    transform: scale(0.4);
                }

                to {
                    opacity: 1;
                    clip-path: inset(0 0 0 0);
                }
            }

            @keyframes showContent {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }
            /* This is an example, feel free to delete this code */
            .tooltip-container {
                --background: #333333;
                --color: #e8e8e8;
                position: relative;
                cursor: pointer;
                transition: all 0.4s cubic-bezier(0.23, 1, 0.32, 1);
                font-size: 18px;
                font-weight: 600;
                color: var(--color);
                padding: 0.7em 1.8em;
                border-radius: 8px;
                text-transform: uppercase;
                height: 60px;
                width: 180px;
                display: grid;
                place-items: center;
                border: 2px solid var(--color);
                margin-left: 780px;
                margin-top: 100px;
            }

            .text {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                display: grid;
                place-items: center;
                transform-origin: -100%;
                transform: scale(1);
                transition: all 0.4s cubic-bezier(0.23, 1, 0.32, 1);
            }

            .tooltip-container span:last-child {
                position: absolute;
                top: 0%;
                left: 100%;
                width: 100%;
                height: 100%;
                border-radius: 8px;
                opacity: 1;
                background-color: var(--background);
                z-index: -1;
                border: 2px solid var(--background);
                transform: scale(0);
                transform-origin: 0;
                transition: all 0.4s cubic-bezier(0.23, 1, 0.32, 1);
                display: grid;
                place-items: center;
            }

            .tooltip {
                position: absolute;
                top: 0;
                left: 50%;
                transform: translateX(-50%);
                padding: 0.3em 0.6em;
                opacity: 0;
                pointer-events: none;
                transition: all 0.4s cubic-bezier(0.23, 1, 0.32, 1);
                background: var(--background);
                z-index: -1;
                border-radius: 8px;
                scale: 0;
                transform-origin: 0 0;
                text-transform: capitalize;
                font-weight: 400;
                font-size: 16px;
                box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
            }

            .tooltip::before {
                position: absolute;
                content: "";
                height: 0.6em;
                width: 0.6em;
                bottom: -0.2em;
                left: 50%;
                transform: translate(-50%) rotate(45deg);
                background: var(--background);
            }

            .tooltip-container:hover .tooltip {
                top: -100%;
                opacity: 1;
                visibility: visible;
                pointer-events: auto;
                scale: 1;
                animation: shake 0.5s ease-in-out both;
            }

            .tooltip-container:hover {
                box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
                color: white;
                border-color: transparent;
            }

            .tooltip-container:hover span:last-child {
                transform: scale(1);
                left: 0;
            }

            .tooltip-container:hover .text {
                opacity: 0;
                top: 0%;
                left: 100%;
                transform: scale(0);
            }

            @keyframes shake {
                0% {
                    rotate: 0;
                }

                25% {
                    rotate: 7deg;
                }

                50% {
                    rotate: -7deg;
                }

                75% {
                    rotate: 1deg;
                }

                100% {
                    rotate: 0;
                }
            }

            p{
                font-weight: bolder;
                color:#333333;
            }

            .footer{
                margin-bottom: 50px;
            }
            .button {
                height: 50px;
                width: 150px;
                border: none;
                border-radius: 10px;
                cursor: pointer;
                position: relative;
                overflow: hidden;
                transition: all 0.5s ease-in-out;
            }

            .button:hover {
                box-shadow: .5px .5px 150px #252525;
            }

            .type1::after {
                content: "Thanks";
                height: 50px;
                width: 150px;
                background-color: rgb(51, 51, 51);
                color: #fff;
                position: absolute;
                top: 0%;
                left: 0%;
                transform: translateY(50px);
                font-size: 1.2rem;
                font-weight: 600;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.5s ease-in-out;
            }

            .type1::before {
                content: "Buy Now";
                height: 50px;
                width: 150px;
                background-color: #fff;
                color:rgb(51, 51, 51);
                position: absolute;
                top: 0%;
                left: 0%;
                transform: translateY(0px) scale(1.2);
                font-size: 1.2rem;
                font-weight: 600;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.5s ease-in-out;
            }

            .type1:hover::after {
                transform: translateY(0) scale(1.2);
            }

            .type1:hover::before {
                transform: translateY(-50px) scale(0) rotate(120deg);
            }
            .button{
                left: 600px;
                bottom: 53px;
            }
            
/* MAIN */
/* =============================================== */
.label {
  display: flex;
  align-items: center;
  border-radius: 100px;
  padding: 14px 16px;
  margin: 5px 0;
  cursor: pointer;
  transition: .3s;
}

.label:hover,
.label:focus-within,
.label:active {
  background: hsla(0, 0%, 80%, .14);
}

.radio-input {
  position: absolute;
  left: 0;
  top: 0;
  width: 1px;
  height: 1px;
  opacity: 0;
  z-index: -1;
}

.radio-design {
  width: 22px;
  height: 22px;
  border-radius: 100px;
  background: linear-gradient(to right bottom, hsl(154, 97%, 62%), hsl(225, 97%, 62%));
  position: relative;
}

.radio-design::before {
  content: '';
  display: inline-block;
  width: inherit;
  height: inherit;
  border-radius: inherit;
  background: hsl(0, 0%, 90%);
  transform: scale(1.1);
  transition: .3s;
}

.radio-input:checked+.radio-design::before {
  transform: scale(0);
}

.label-text {
  color: hsl(0, 0%, 70%);
  margin-left: 14px;
  letter-spacing: 3px;
  text-transform: uppercase;
  font-size: 18px;
  font-weight: 900;
  transition: .3s;
}

.radio-input:checked~.label-text {
  color: hsl(0, 0%, 40%);
}
p{
    color: ;
}
        </style>
    </head>
    <body>
        <form action="cart" method="get">
            
       
        <section>
            <details open>
                <summary>Description</summary>
                <div>
                    <img src="${car.img}" />
                    <p>${car.description}</p>
                </div>
            </details>
            <details open>
                <summary>More Detail</summary>
                <div>
                    <img src="${detail.interior_img}" />
                    <p>${detail.interior}</p>
                </div>
            </details>
            <details open>
                <summary>Color</summary>


                <c:forEach items="${color}" var="o">
                    <div>
                        <img src="${o.color_img}"/>
                        <input type="hidden" name="cimg" value="${o.color_img}">
                        <div class="radio-input-wrapper">
                            <label class="label">
                                <input value="${o.color}" name="color" id="value-2" class="radio-input" type="radio">
                                <div class="radio-design"></div>
                                <div class="label-text">${o.color}</div>
                            </label>

                        </div>
                    </div>
                </c:forEach>


            </details>
        </section>
        <div class="footer">
            <div class="tooltip-container">
                <span class="tooltip">${car.name}</span>
                <span class="text">Price 👆</span>
                <span>${car.price} 👋</span>
            </div>
            <button class="button type1" type="submit">
            </button>
            <input type="hidden" name="name" value="${car.name}">
            <input type="hidden" name="price" value="${car.price}">
            
</div>
 </body>
             
           
           
 
        
 </form>
</html>
