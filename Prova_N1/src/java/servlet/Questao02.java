/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Laboratorio
 */
@WebServlet(name = "Questao02", urlPatterns = {"/questao02"})
public class Questao02 extends HttpServlet {
public static float media = 0;
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
        
        float nota[] = new float[3];
        int i;
        
        String situacao = request.getParameter("situacao");
        
        String msg = "";
        double f;
        
       if (request.getParameter("notaE")== null){
           
           for (i = 0; i < 3; i++){
               nota[i] = Float.valueOf(request.getParameter("nota"+i));
            }

            media = ((nota[0] + nota[1] + nota[2])/3);

            if (media < 7)
                response.sendRedirect("questao02.jsp?situacao="+"exame");
            else
                msg = "Parabéns, você foi aprovado!";
       } else {
           Double notaE = Double.valueOf(request.getParameter("notaE"));
           f = (media + notaE) / 2;
           
           if (f >= 5)
               msg = "Parabéns, você foi aprovado na merda";
           else
               msg = "Você foi reprovado, trouxa!";
       }
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Questao02</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>" + msg + " </h1><br/><br/>");
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
