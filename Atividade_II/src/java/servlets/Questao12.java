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
@WebServlet(name = "Questao12", urlPatterns = {"/questao12"})
public class Questao12 extends HttpServlet {

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
                int idMaior = 0, max = 5;
                int idade[] = new int[max];
                String nome[] = new String[max];
                boolean a = false;

                /* NÃO DEU CERTO NEM ASSIM NEM SÓ EM UM LAÇO FOR
                idade[0] = Integer.valueOf(request.getParameter("idade1"));
                nome[0] = request.getParameter("nome1");
                
                idade[1] = Integer.valueOf(request.getParameter("idade2"));
                nome[1] = request.getParameter("nome2");
                
                idade[2] = Integer.valueOf(request.getParameter("idade3"));
                nome[2] = request.getParameter("nome3");
                
                idade[3] = Integer.valueOf(request.getParameter("idade4"));
                nome[3] = request.getParameter("nome4");
                
                idade[4] = Integer.valueOf(request.getParameter("idade5"));
                nome[4] = request.getParameter("nome5");
                */
                
                while (!a){
                    for (int y = 0; y<max-1; y++){
                        a = true;
                        if (idade[idMaior] > idade[y+1]) {
                            idMaior = y;
                            a = false;
                        }
                    }
                }
                
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Questao12</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> A maior nota foi do "+nome[idMaior]+" e sua nota foi "+idade[idMaior]+". </h1>");
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
