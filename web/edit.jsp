<%-- 
    Document   : edit
    Created on : Feb 18, 2024, 11:19:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <style>
            button {
                width: 150px;
                height: 60px;
                border: 3px solid #315cfd;
                border-radius: 45px;
                transition: all 0.3s;
                cursor: pointer;
                background: white;
                font-size: 1.2em;
                font-weight: 550;
                font-family: 'Montserrat', sans-serif;
            }

            button:hover {
                background: #315cfd;
                color: white;
                font-size: 1.5em;
            }
            /* Input container */
            .input-container {
                position: relative;
                margin: 20px;
            }

            /* Input field */
            .input-field {
                display: block;
                width: 100%;
                padding: 10px;
                font-size: 16px;
                border: none;
                border-bottom: 2px solid #ccc;
                outline: none;
                background-color: transparent;
            }

            /* Input label */
            .input-label {
                position: absolute;
                top: 0;
                left: 0;
                font-size: 16px;
                color: rgba(204, 204, 204, 0);
                pointer-events: none;
                transition: all 0.3s ease;
            }

            /* Input highlight */
            .input-highlight {
                position: absolute;
                bottom: 0;
                left: 0;
                height: 2px;
                width: 0;
                background-color: #007bff;
                transition: all 0.3s ease;
            }

            /* Input field:focus styles */
            .input-field:focus + .input-label {
                top: -20px;
                font-size: 12px;
                color: #007bff;
            }

            .input-field:focus + .input-label + .input-highlight {
                width: 100%;
            }
            body{
                background-image: url(https://images.pexels.com/photos/5733743/pexels-photo-5733743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
                background-size: cover;
                
            } 
            input{
                color: whitesmoke;
            }
        </style>
    </head>
     <body>
    <center>
        

    </center> 
    <form action="edit" method="post">
<!--        <center> <table>
                        <tr>
                            <td>Roll Number</td>
                            <td><input value="${st.rollNo}" type="text" name="no" readonly></td>
                        </tr>  
                        <tr>
                            <td>Name</td>
                            <td><input value="${st.name}" type="text" name="name"></td>
                        </tr>  
                        <tr>
                            <td>Mark</td>
                            <td><input value="${st.mark}" type="text" name="mark"></td>
                        </tr>  
        
            </table> </center>-->
        <div class="input-container">
            <input placeholder="ID" class="input-field" type="text" value="${car.id}" name="id" readonly>
            <label for="input-field" class="input-label">ID</label>
            <span class="input-highlight"></span>
        </div>
        <div class="input-container">
            <input placeholder="Name" class="input-field" type="text" value="${car.name}" name="name">
            <label for="input-field" class="input-label">Name</label>
            <span class="input-highlight"></span>
        </div>
        <div class="input-container">
            <input placeholder="Image" class="input-field" type="text" value="${car.img}" name="img">
            <label for="input-field" class="input-label">Image</label>
            <span class="input-highlight"></span>
        </div>
        <div class="input-container">
            <input placeholder="Description" class="input-field" type="text" value="${car.description}" name="des">
            <label for="input-field" class="input-label">Description</label>
            <span class="input-highlight"></span>
        </div>
            <div class="input-container">
            <input placeholder="Price" class="input-field" type="text" value="${car.price}" name="price">
            <label for="input-field" class="input-label">Price</label>
            <span class="input-highlight"></span>
        </div>
            <div class="input-container">
            <input placeholder="ID_Type" class="input-field" type="text" value="${car.idt}" name="idt">
            <label for="input-field" class="input-label">Id Type</label>
            <span class="input-highlight"></span>
        </div>
<div class="sr">
            <center><button type="submit">
                    <span>UPDATE</span>
                </button>
            </center>
        </div>
    </form>
</body>
</html>
