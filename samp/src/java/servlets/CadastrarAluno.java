/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controle.AlunoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Aluno;

/**
 *
 * @author DTEC
 */
@WebServlet(name = "CadastrarAluno", urlPatterns = {"/cadastraraluno"})
public class CadastrarAluno extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CadastrarAluno</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CadastrarAluno at " + request.getContextPath() + "</h1>");
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
        
        Aluno novo = new Aluno();
        novo.setNome(request.getParameter("nome"));
        int contaEspaco = 0;
        String usuario = "";
        
        
        for(int i = 0; i < (novo.getNome().length()) && contaEspaco <=1; i++){
            if (novo.getNome().charAt(i) == ' '){
                contaEspaco++;
            } else{
                usuario = usuario + novo.getNome().charAt(i);
            }
        }
        
        novo.setCodCurso(Integer.valueOf(request.getParameter("curso")));
        
        novo.setUsuario((usuario +""+ novo.getCodCurso()));
        novo.setSenha(usuario);
        AlunoImpl aluno = new AlunoImpl();
        
        aluno.cadastrar(novo);
        
        response.sendRedirect("cadastradosucesso.jsp?login="+novo.getUsuario()+"&senha="+novo.getSenha());  
        
        
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
