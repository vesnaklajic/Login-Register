
package servlets;

import dao.Connector;
import dao.SelectClient;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url = "/WEB-INF/logIn.jsp";
        
        String msg = "";

        if ("login".equals(request.getParameter("section"))) {//if logIn

        String bUser = request.getParameter("username");//recuperer login 
        String bPass = request.getParameter("password");//recupere password
        
        
        SelectClient selectClient = new SelectClient();

        if (selectClient.getClient(bUser, bPass) != null) {
                url = "/WEB-INF/bienvenue.jsp";
                request.setAttribute("msg", bUser);
            } else {
                url = "/WEB-INF/bienvenue.jsp";
                request.setAttribute("msg", "Login/Mot de passe inconnu!");
            }

        }
        if ("registrer".equals(request.getParameter("section"))) {//if registrer
            url = "/WEB-INF/registrer.jsp";

//            url = "/WEB-INF/bienvenue.jsp";
//            request.setAttribute("msg", "newUser");
        }

        request.getRequestDispatcher(url).forward(request, response);
    }//main

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
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

}//class 