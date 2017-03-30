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
@WebServlet(name = "While_3", urlPatterns = {"/while_3"})
public class While_3 extends HttpServlet {

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
        
        int MAX = 10, i, y, idMaiorIdade = 0, idMaiorAltura = 0;
        String nome[] = new String[MAX];
        int idade[] = new int [MAX];
        float altura[] = new float[MAX];
        boolean achei = false;
        
        for (i = 0; i <MAX; i++)
            nome[i] = request.getParameter("nome"+i);
        
        for (i = 0; i < MAX; i++)
            idade[i] = Integer.valueOf((request.getParameter("idade"+1)));
        
        for (i = 0; i < MAX; i++)
            altura[i] = Float.valueOf((request.getParameter("altura"+i)));
        
        while (achei==false){
            for (y = 0; y<MAX-1; y++){
                achei = true;
                if (idade[idMaiorIdade] < idade[y+1]) {
                    idMaiorIdade = y+1;
                    achei = false;
                }
            }
        }
        
        achei = false;
        while (achei==false){
            for (y = 0; y<MAX-1; y++){
                achei = true;
                if (altura[idMaiorAltura] < altura[y+1]) {
                    idMaiorAltura = y+1;
                    achei = false;
                }
            }
        }
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet While_3</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Maior idade</h1>");
            out.println("<h2> Nome: "+nome[idMaiorIdade]+" Idade: "+idade[idMaiorIdade]+"</h2>");
            out.println("<h1> Maior altura</h1>");
            out.println("<h2> Nome: "+nome[idMaiorAltura]+" Idade: "+idade[idMaiorAltura]+"</h2>");
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
