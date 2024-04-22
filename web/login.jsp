<%-- 
    Document   : login
    Created on : Feb 17, 2024, 3:35:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

            * {
                box-sizing: border-box;
            }

            body {
                background: #f6f5f7;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                font-family: 'Montserrat', sans-serif;
                height: 100vh;
                margin: -20px 0 50px;
            }

            h1 {
                font-weight: bold;
                margin: 0;
            }

            h2 {
                text-align: center;
            }

            p {
                font-size: 14px;
                font-weight: 100;
                line-height: 20px;
                letter-spacing: 0.5px;
                margin: 20px 0 30px;
            }

            span {
                font-size: 12px;
            }

            a {
                color: #333;
                font-size: 14px;
                text-decoration: none;
                margin: 15px 0;
            }

            button {
                border-radius: 20px;
                border: 1px solid whitesmoke;
                background-color: #606063;
                color: #FFFFFF;
                font-size: 12px;
                font-weight: bold;
                padding: 12px 45px;
                letter-spacing: 1px;
                text-transform: uppercase;
                transition: transform 80ms ease-in;
            }

            button:active {
                transform: scale(0.95);
            }

            button:focus {
                outline: none;
            }

            button.ghost {
                background-color: transparent;
                border-color: #333;
                color: #222;
            }

            form {
                background-color: #606063;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0 50px;
                height: 100%;
                text-align: center;
            }

            input {
                background-color: #eee;
                border: none;
                padding: 12px 15px;
                margin: 8px 0;
                width: 100%;
            }

            .container {
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 14px 28px rgba(0,0,0,0.25),
                    0 10px 10px rgba(0,0,0,0.22);
                position: relative;
                overflow: hidden;
                width: 768px;
                max-width: 100%;
                min-height: 480px;
            }

            .form-container {
                position: absolute;
                top: 0;
                height: 100%;
                transition: all 0.6s ease-in-out;
            }

            .sign-in-container {
                left: 0;
                width: 50%;
                z-index: 2;
            }

            .container.right-panel-active .sign-in-container {
                transform: translateX(100%);
            }

            .sign-up-container {
                left: 0;
                width: 50%;
                opacity: 0;
                z-index: 1;
            }

            .container.right-panel-active .sign-up-container {
                transform: translateX(100%);
                opacity: 1;
                z-index: 5;
                animation: show 0.6s;
            }

            @keyframes show {
                0%, 49.99% {
                    opacity: 0;
                    z-index: 1;
                }

                50%, 100% {
                    opacity: 1;
                    z-index: 5;
                }
            }

            .overlay-container {
                position: absolute;
                top: 0;
                left: 50%;
                width: 50%;
                height: 100%;
                overflow: hidden;
                transition: transform 0.6s ease-in-out;
                z-index: 100;
            }

            .container.right-panel-active .overlay-container{
                transform: translateX(-100%);
            }

            .overlay {
                background: #FF416C;
                background: -webkit-linear-gradient(to right, #FF4B2B, #FF416C);
                background: linear-gradient(to right, #8a8a8a, whitesmoke);
                background-repeat: no-repeat;
                background-size: cover;
                background-position: 0 0;
                /*color: #FFFFFF;*/
                position: relative;
                left: -100%;
                height: 100%;
                width: 200%;
                transform: translateX(0);
                transition: transform 0.6s ease-in-out;
            }

            .container.right-panel-active .overlay {
                transform: translateX(50%);
            }

            .overlay-panel {
                position: absolute;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0 40px;
                text-align: center;
                top: 0;
                height: 100%;
                width: 50%;
                transform: translateX(0);
                transition: transform 0.6s ease-in-out;
            }

            .overlay-left {
                transform: translateX(-20%);
            }

            .container.right-panel-active .overlay-left {
                transform: translateX(0);
            }

            .overlay-right {
                right: 0;
                transform: translateX(0);
            }

            .container.right-panel-active .overlay-right {
                transform: translateX(20%);
            }
            body{
                background-image: url(https://wallpapercave.com/wp/wp3616424.jpg);
                background-position: center;
            }
            .social-container {
                margin: 20px 0;
            }

            .social-container a {
                border: 1px solid #DDDDDD;
                border-radius: 50%;
                display: inline-flex;
                justify-content: center;
                align-items: center;
                margin: 0 5px;
                height: 40px;
                width: 40px;
            }

            footer {
                background-color: #222;
                color: #fff;
                font-size: 14px;
                bottom: 0;
                position: fixed;
                left: 0;
                right: 0;
                text-align: center;
                z-index: 999;
            }

            footer p {
                margin: 10px 0;
            }

            footer i {
                color: red;
            }

            footer a {
                color: #3c97bf;
                text-decoration: none;
            }
            form-container sign-in-container,a,span{
                color: #f6f5f7
            }
            .checkbox-wrapper input[type="checkbox"] {
                display: none;
            }
            
            .checkbox-wrapper .terms-label {
                cursor: pointer;
                display: flex;
                align-items: center;
            }

            .checkbox-wrapper .terms-label .label-text {
                margin-left: 10px;
            }

            .checkbox-wrapper .checkbox-svg {
                width: 15px;
                height: 15px;
            }

            .checkbox-wrapper .checkbox-box {
                fill: rgba(207, 205, 205, 0.425);
                stroke: white;
                stroke-dasharray: 800;
                stroke-dashoffset: 800;
                transition: stroke-dashoffset 0.6s ease-in;
            }

            .checkbox-wrapper .checkbox-tick {
                stroke: white;
                stroke-dasharray: 172;
                stroke-dashoffset: 172;
                transition: stroke-dashoffset 0.6s ease-in;
            }

            .checkbox-wrapper input[type="checkbox"]:checked + .terms-label .checkbox-box,
            .checkbox-wrapper input[type="checkbox"]:checked + .terms-label .checkbox-tick {
                stroke-dashoffset: 0;
            }
            .terms-label{
                margin-top: 10px;
            }
            .button{
                margin-top:15px;
            }
        </style>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form action="signup" method="post">
                    <h1>Create Account</h1>
                    <div class="social-container">

                    </div>
                    <span>${Epass}</span><span>${sign}</span>
                    <input type="text" name="user" placeholder="Name" />
                    <input type="Password" name="password" placeholder="Password" />
                    <input type="password" name="cpassword" placeholder="Comfirm Password" />
                    <button type="submit">Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="login" method="post">
                    <h1>Sign in</h1>
                    <div class="social-container">
                    </div>
                    <span>${err}</span>
                    <input type="text" name="user" placeholder="Account" value="${username}"/>
                    <input type="password" name="password" placeholder="Password" value ="${password}" />
                    <!--                    <div class="checkbox-wrapper">
                                            <input checked="" type="checkbox" class="check" id="check1-61" name="remember" value="1" ${rem =='1' ?'checked':''} >
                                            <label for="check1-61" class="label">
                                                <svg width="45" height="45" viewBox="0 0 95 95">
                                                <rect x="30" y="20" width="50" height="50" stroke="black" fill="none"></rect>
                                                <g transform="translate(0,-952.36222)">
                                                <path d="m 56,963 c -102,122 6,9 7,9 17,-5 -66,69 -38,52 122,-77 -7,14 18,4 29,-11 45,-43 23,-4" stroke="black" stroke-width="3" fill="none" class="path1"></path>
                                                </g>
                                                </svg>
                                                <span>Remember me</span>
                                            </label>
                                        </div>-->
                    <div class="checkbox-wrapper">
                        <input id="terms-checkbox-37"  type="checkbox" name="remember" value="1" ${rem =='1' ?'checked':''}>
                        <label class="terms-label" for="terms-checkbox-37">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 200 200" class="checkbox-svg">
                            <mask fill="white" id="path-1-inside-1_476_5-37">
                                <rect height="200" width="200"></rect>
                            </mask>
                            <rect mask="url(#path-1-inside-1_476_5-37)" stroke-width="40" class="checkbox-box" height="200" width="200"></rect>
                            <path stroke-width="15" d="M52 111.018L76.9867 136L149 64" class="checkbox-tick"></path>
                            </svg>
                            <span class="label-text">Remember me</span>
                        </label>
                    </div>






                    <!--			<a href="#">Forgot your password?</a>-->
                    <button class="button" type="submit">Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal information</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and enjoy shopping with us</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <p>
                Created with <i class="fa fa-heart"></i> by
                <a target="_blank" href="">Phan Hiển</a>
                - Welcome to my project 
                <a target="_blank" href="">website</a>.
            </p>
        </footer>
    </body>
    <script>
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const container = document.getElementById('container');

        signUpButton.addEventListener('click', () => {
            container.classList.add("right-panel-active");
        });

        signInButton.addEventListener('click', () => {
            container.classList.remove("right-panel-active");
        });
    </script>
</html>
