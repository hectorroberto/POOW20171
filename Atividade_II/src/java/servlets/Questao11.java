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
 * @author Hector Roberto Velásquez
 */
@WebServlet(name = "Questao11", urlPatterns = {"/questao11"})
public class Questao11 extends HttpServlet {

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
        
        // Recebendo os valores do JSP
        int n1 = Integer.valueOf(request.getParameter("n1"));
        int n2 = Integer.valueOf(request.getParameter("n2"));
        // Criando algumas variáveis
        int i = n1+1;
        int soma = i;
        String numeros = (""+i);
        // Atribuindo a String ela mesma mais o número q será constantemente incrementado
        do{
            // A resposta final dessa string serão todos os números que estão entre os recebidos
            i++;
            numeros = (numeros+", "+i);  
            soma += i;
        } while (i < n2-1);
        numeros += ".";
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Questao11</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h2> Os números entre "+n1+" e "+n2+" são: </br>"+numeros+"</h2>");
            out.println("<h2></br>A soma desses valores é: "+soma+"</h2>");
            /* Esta forma também dá certo, mas ela não exibe os valores em linha e eu quero em linha.
            while (i <= n2){
                out.print("<h4> "+i+", </h4>");
                i++;
            }*/
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
