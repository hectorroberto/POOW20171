/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controle.ContatoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cidade;
import modelo.Contato;

/**
 *
 * @author lab
 */
@WebServlet(name = "CadastrarContato", urlPatterns = {"/cadastrarContato"})
public class CadastrarContato extends HttpServlet {

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
            out.println("<title>Servlet CadastrarContato</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CadastrarContato at " + request.getContextPath() + "</h1>");
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
        Contato contato = new Contato();//cria o objeto contato
        int id=0;
        if(request.getParameter("id") != null)
            id = Integer.valueOf(request.getParameter("id"));
        
        //preenche o objeto contato
        contato.setNome(request.getParameter("nome"));
        contato.setTelefone(request.getParameter("telefone"));
        Cidade cidade = new Cidade();
        cidade.setId(Integer.valueOf(request.getParameter("cidade")));
        contato.setCidade(cidade);
        ContatoImpl contatoDao = new ContatoImpl();//cria o objeto contatoDao
        
        //salva ou altera
        if(id != 0){
            contato.setId(id);
            contatoDao.atualizar(contato);
        }else
            contatoDao.salvar(contato);
        //retorna pra a tela de cadastro
        response.sendRedirect("listar.jsp");
        
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
