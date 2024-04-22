<%-- 
    Document   : add
    Created on : Feb 18, 2024, 9:20:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <style>
            .ui-btn {
  --btn-default-bg: rgb(41, 41, 41);
  --btn-padding: 15px 20px;
  --btn-hover-bg: rgb(51, 51, 51);
  --btn-transition: .3s;
  --btn-letter-spacing: .1rem;
  --btn-animation-duration: 1.2s;
  --btn-shadow-color: rgba(0, 0, 0, 0.137);
  --btn-shadow: 0 2px 10px 0 var(--btn-shadow-color);
  --hover-btn-color: rgb(103, 117, 129);
  --default-btn-color: #fff;
  --font-size: 16px;
  /* 👆 this field should not be empty */
  --font-weight: 600;
  --font-family: Menlo,Roboto Mono,monospace;
  /* 👆 this field should not be empty */
}

/* button settings 👆 */

.ui-btn {
  box-sizing: border-box;
  padding: var(--btn-padding);
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--default-btn-color);
  font: var(--font-weight) var(--font-size) var(--font-family);
  background: var(--btn-default-bg);
  border: none;
  cursor: pointer;
  transition: var(--btn-transition);
  overflow: hidden;
  box-shadow: var(--btn-shadow);
  margin-top: 5px;
}

.ui-btn span {
  letter-spacing: var(--btn-letter-spacing);
  transition: var(--btn-transition);
  box-sizing: border-box;
  position: relative;
  background: inherit;
}

.ui-btn span::before {
  box-sizing: border-box;
  position: absolute;
  content: "";
  background: inherit;
}

.ui-btn:hover, .ui-btn:focus {
  background: var(--btn-hover-bg);
}

.ui-btn:hover span, .ui-btn:focus span {
  color: var(--hover-btn-color);
}

.ui-btn:hover span::before, .ui-btn:focus span::before {
  animation: chitchat linear both var(--btn-animation-duration);
}

@keyframes chitchat {
  0% {
    content: "#";
  }

  5% {
    content: ".";
  }

  10% {
    content: "^{";
  }

  15% {
    content: "-!";
  }

  20% {
    content: "#$_";
  }

  25% {
    content: "№:0";
  }

  30% {
    content: "#+.";
  }

  35% {
    content: "@}-?";
  }

  40% {
    content: "?{4@%";
  }

  45% {
    content: "=.,^!";
  }

  50% {
    content: "?2@%";
  }

  55% {
    content: "\;1}]";
  }

  60% {
    content: "?{%:%";
    right: 0;
  }

  65% {
    content: "|{f[4";
    right: 0;
  }

  70% {
    content: "{4%0%";
    right: 0;
  }

  75% {
    content: "'1_0<";
    right: 0;
  }

  80% {
    content: "{0%";
    right: 0;
  }

  85% {
    content: "]>'";
    right: 0;
  }

  90% {
    content: "4";
    right: 0;
  }

  95% {
    content: "2";
    right: 0;
  }

  100% {
    content: "";
    right: 0;
  }
}
            .group {
                position: relative;
                
            }

            .input {
                font-size: 16px;
                padding: 10px 10px 10px 5px;
                display: block;
                width: 1000px;
                border: none;
                border-bottom: 1px solid #515151;
                background: transparent;
            }

            .input:focus {
                outline: none;
            }

            label {
                color: #999;
                font-size: 18px;
                font-weight: normal;
                position: absolute;
                pointer-events: none;
                left: 5px;
                top: 10px;
                transition: 0.2s ease all;
                -moz-transition: 0.2s ease all;
                -webkit-transition: 0.2s ease all;
            }

            .input:focus ~ label, .input:valid ~ label {
                top: -20px;
                font-size: 14px;
                color: #5264AE;
            }

            .bar {
                position: relative;
                display: block;
                width: 2000px;
            }

            .bar:before, .bar:after {
                content: '';
                height: 2px;
                width: 0;
                bottom: 1px;
                position: absolute;
                background: #5264AE;
                transition: 0.2s ease all;
                -moz-transition: 0.2s ease all;
                -webkit-transition: 0.2s ease all;
            }

            .bar:before {
                left: 50%;
            }

            .bar:after {
                right: 50%;
            }

            .input:focus ~ .bar:before, .input:focus ~ .bar:after {
                width: 50%;
            }

            .highlight {
                position: absolute;
                height: 60%;
                width: 100px;
                top: 25%;
                left: 0;
                pointer-events: none;
                opacity: 0.5;
            }

            .input:focus ~ .highlight {
                animation: inputHighlighter 0.3s ease;
            }

            @keyframes inputHighlighter {
                from {
                    background: #5264AE;
                }

                to {
                    width: 0;
                    background: transparent;
                }
            }
            body{
                background-image: url(https://images.pexels.com/photos/1719648/pexels-photo-1719648.jpeg);
                background-position: center;
            }
            input{
                color: whitesmoke;
               
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
       
<!--        <form action="adser" method="post">
            <table>
                <tr>
                    <td>Roll Number</td>
                    <td><input type="text" name="no"></td>
                </tr>  
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>  
                <tr>
                    <td> Mark</td>
                    <td><input type="text" name="mark"></td>
                </tr>  
            </table>

            <button type="submit" name="ADD"/>
            <span>ADD</span>
        </button> 
    </form>-->
<br/><h3 style="color: red">${mess}</h3>
         <form action="add" method="post">
             <div class="group">
        <input required="" type="text" class="input" name="id" >
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>ID</label>
    </div><br/>
    <br/>
    <div class="group">
        <input required="" type="text" class="input" name="name">
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>Name</label>
    </div><br/> <br/>
    <div class="group">
        <input required="" type="text" class="input" name="img">
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>Image</label><br/> <br/>
    </div>
    <div class="group">
        <input required="" type="text" class="input" name="des">
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>Description</label><br/> <br/>
    </div>
    <div class="group">
        <input required="" type="text" class="input" name="price">
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>Price</label><br/> <br/>
    </div>
    <div class="group">
        <input required="" type="text" class="input" name="idt">
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>ID Type</label><br/> <br/>
    </div>
    <button class="ui-btn" type="submit" name="ADD">
  <span>
    ADD 
  </span>
</button>
         </form> <br/>
<!--        <button type="submit" name="ADD"/>
            <span>ADD</span>
        </button> -->

</body>
</html>
