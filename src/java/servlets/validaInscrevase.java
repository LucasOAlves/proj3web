/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lucas
 */
public class validaInscrevase extends HttpServlet {

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
            out.println("<title>Servlet validaInscrevase</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet validaInscrevase at " + request.getContextPath() + "</h1>");
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
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        UsuarioDAO userDao = new UsuarioDAO();
        try{
            if(request.getParameter("email") != null && userDao.verificaUnique("email",request.getParameter("email"))) {
                response.getWriter().write("{\"erro\":\"Email já utilizado\",\"result\":\"false\"}");
                response.getWriter().flush();
            } else if(request.getParameter("login") != null && userDao.verificaUnique("login", request.getParameter("login"))){
                response.getWriter().write("{\"erro\":\"Login já utilizado\",\"result\":\"false\"}");
                response.getWriter().flush();
            }else if(request.getParameter("nome") != null && (request.getParameter("nome").equals(""))){
                response.getWriter().write("{\"erro\":\"Nome vazio\",\"result\":\"false\"}");
                response.getWriter().flush();
            } else if(request.getParameter("senha") != null && request.getParameter("senha").length() <=8){
                response.getWriter().write("{\"erro\":\"Senha menor que 8 digitos\",\"result\":\"false\"}");
                response.getWriter().flush();
            } else if(request.getParameter("estado") != null && request.getParameter("estado").equals("")){
                response.getWriter().write("{\"erro\":\"Estado vazio\",\"result\":\"false\"}");
                response.getWriter().flush();
            } else if (request.getParameter("cidade") != null && request.getParameter("cidade").equals("")){
                response.getWriter().write("{\"erro\":\"Cidade vazio\",\"result\":\"false\"}");
                response.getWriter().flush();
            } else if(request.getParameter("bairro") != null && request.getParameter("bairro").equals("") ){
                response.getWriter().write("{\"erro\":\"Nome vazio\",\"result\":\"false\"}");
                response.getWriter().flush();
            }else if(request.getParameter("rua") != null && request.getParameter("rua").equals("") ){
                response.getWriter().write("{\"erro\":\"Rua vazio\",\"result\":\"false\"}");
                response.getWriter().flush();
            }else if(request.getParameter("numero") != null && request.getParameter("numero").equals("")){
                response.getWriter().write("{\"erro\":\"Numero vazio\",\"result\":\"false\"}");
                response.getWriter().flush();
            }else {
                response.getWriter().write("{\"result\":\"true\"}");
                response.getWriter().flush();
            }
        }catch(IOException e){
            e.printStackTrace();
        }
            
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
