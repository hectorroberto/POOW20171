/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author haguilar
 */
@WebServlet(name = "Squestao07", urlPatterns = {"/squestao07"})
public class Squestao07 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                int n1 = Integer.valueOf(request.getParameter("num1"));
                int n2 = Integer.valueOf(request.getParameter("num2"));
                int n3 = Integer.valueOf(request.getParameter("num3"));
                
                int maior = 0;
                int meio = 0;
                int menor = 0;

               if((n1 > n2) && (n2 > n3)){
                   maior = n1;
                   meio = n2;
                   menor = n3;
                   
               }else if((n2 > n1) && (n1 > n3)){
                   maior = n2;
                   meio = n1;
                   menor = n3;
                   
               }else if((n3 > n2) && (n2 > n1)){
                   maior = n3;
                   meio = n2;
                   menor = n1;
                   
               }else if((n1 > n2) && (n3 > n2)){
                   maior = n1;
                   meio = n3;
                   menor = n2;
               }
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Squestao07</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Resultado</h1>");
            out.println("<h3> Maior número: "+maior+"<br/> Número médio: "+meio+"<br/> Menor número: "+menor+"</h3");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
