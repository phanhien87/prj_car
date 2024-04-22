/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.CarDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;
import model.Account;
import model.Bill;
import model.Items;

/**
 *
 * @author Admin
 */
public class bill extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();

try {
    Double total = Double.parseDouble(request.getParameter("total"));
    
    // check acc co trg phien lm vc
    if (session.getAttribute("acc") instanceof Account) {
        Account a = (Account) session.getAttribute("acc");
        
        // check acc ton tai
        if (a != null && a.getUser() != null) {
            CarDAO dao = new CarDAO();
            
            Bill b = new Bill(a.getUser(), LocalDate.now().toString(), total);
            
           
            dao.AddBill(b);
            
            // remove cart
            session.removeAttribute("cart");
            request.setAttribute("mess", "You have successfully purchased your items!");
         
           request.getRequestDispatcher("cart_.jsp").forward(request, response);
        } else {
            
            response.sendRedirect("errorPage.jsp");
        }
    } else {
        response.sendRedirect("login.jsp");
    }
} catch (NumberFormatException e) {
    
    response.sendRedirect("errorPage.jsp");
} 
    
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
