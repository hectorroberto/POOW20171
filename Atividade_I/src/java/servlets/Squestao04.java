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
import javax.swing.JOptionPane;

/**
 *
 * @author Hector Roberto
 */
@WebServlet(name = "Squestao04", urlPatterns = {"/squestao04"})
public class Squestao04 extends HttpServlet {

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
        
        Float nota = 0.0f; 
        Float notaExame = 0.0f;          
        String situacao; 
        if(request.getParameter("nota") != null){ 
            nota = Float.valueOf(request.getParameter("nota")); 
            if(nota < 7) 
                situacao = "Exame";
            else 
                situacao = "Aprovado"; 
        }else{           
            notaExame = Float.valueOf(request.getParameter("notaexame")); 
            if(notaExame > 5)
                situacao = "Aprovado no exame";
            else
                situacao = "Reprovado no exame";
        }
        
        if(situacao.equals("Exame")) 
            response.sendRedirect("jquestao04.jsp?situacao="+situacao);        
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.println("<title>Servlet Questao4</title>");            
                out.println("</head>");
                out.println("<body>");
                if(situacao.equals("Aprovado")) 
                    out.println("<h1>Aluno aprovado sem necessidade de exame</h1>");
                else if(situacao.equals("Aprovado no exame"))
                    out.println("<h1>Aluno aprovado no exame</h1>");
                else 
                    out.println("<h1>Aluno reprovado no exame</h1>");
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
