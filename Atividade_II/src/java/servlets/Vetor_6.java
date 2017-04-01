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
 * @author Administrador
 */
@WebServlet(name = "Vetor_6", urlPatterns = {"/vetor_6"})
public class Vetor_6 extends HttpServlet {

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
        
        float nota[] = new float[10];
        int conta8 = 0, contaAcimaMedia = 0, i, aux;
        float media = 0;
        
        aux = 1;
        for (i = 0; i < 10; i++){
            nota[i] = Float.valueOf(request.getParameter("nota"+aux));
            aux++;
        }
        
        for ( i = 0; i < 10; i++){
            if (nota[i] <= 8){
                conta8++;
            }
            media += nota[i];
        }
        media = media/10;
        for (i = 0; i < 10; i++){
            if (nota[i] > media)
            contaAcimaMedia++;
                
        }
            
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Vetor_6</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Resultados</h1>");
            out.println("<h2> Media total dos alunos: "+media+"<h2/>");
            out.println("<h2> Quantidade de alunos que tiraram nota acima ou igual a 8: "+conta8+"<h2/>");
            out.println("<h2> Quantidade de alunos que tiraram nota acima da média: "+contaAcimaMedia+"<h2/>");
            out.println("<h2> Quantidade de alunos que tiraram abaixo da média: "+(10-contaAcimaMedia)+"<h2/>");
            out.println("<h2> <h2/>");
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
