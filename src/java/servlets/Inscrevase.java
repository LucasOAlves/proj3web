package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import dao.UsuarioDAO;
import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author murilo
 */
@WebServlet(urlPatterns = {"/Inscrevase"})
public class Inscrevase extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("JSP/Inscrevase.jsp").forward(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        UsuarioDAO userDao = new UsuarioDAO(); 
        if(userDao.insereUsuario(request.getParameter("nome"),request.getParameter("email"),request.getParameter("login"),request.getParameter("senha"),request.getParameter("estado"),request.getParameter("cidade"),request.getParameter("bairro"),request.getParameter("rua"),request.getParameter("numero"))){
            response.getWriter().write("{\"url\":\"Login\",\"result\":\"true\"}");
            response.getWriter().flush();
        } else  if(userDao.verificaUnique("email",request.getParameter("email"))){
            response.getWriter().write("{\"erro\":\"Email já utilizado\",\"result\":\"false\"}");
            response.getWriter().flush();
        } else if(userDao.verificaUnique("login", request.getParameter("login"))){
            response.getWriter().write("{\"erro\":\"Login já utilizado\",\"result\":\"false\"}");
            response.getWriter().flush();
        }else if((request.getParameter("nome").equals(""))){
            response.getWriter().write("{\"erro\":\"Nome vazio\",\"result\":\"false\"}");
            response.getWriter().flush();
        } else if(request.getParameter("senha").length() <=8){
            response.getWriter().write("{\"erro\":\"Senha menor que 8 digitos\",\"result\":\"false\"}");
            response.getWriter().flush();
        } else if(request.getParameter("estado").equals("")){
            response.getWriter().write("{\"erro\":\"Estado vazio\",\"result\":\"false\"}");
            response.getWriter().flush();
        } else if (request.getParameter("cidade").equals("")){
            response.getWriter().write("{\"erro\":\"Cidade vazio\",\"result\":\"false\"}");
            response.getWriter().flush();
        } else if(request.getParameter("bairro").equals("")){
            response.getWriter().write("{\"erro\":\"Nome vazio\",\"result\":\"false\"}");
            response.getWriter().flush();
        }else if(request.getParameter("rua").equals("")){
            response.getWriter().write("{\"erro\":\"Rua vazio\",\"result\":\"false\"}");
            response.getWriter().flush();
        }else if(request.getParameter("numero").equals("")){
            response.getWriter().write("{\"erro\":\"Numero vazio\",\"result\":\"false\"}");
            response.getWriter().flush();
        }else {
            response.getWriter().write("{\"erro\":\"Erro ao acessar banco\",\"result\":\"false\"}");
        }
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
