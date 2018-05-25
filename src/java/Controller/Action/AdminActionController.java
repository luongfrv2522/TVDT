/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Action;

import Controller.Login.Common;
import DAO.AdminDAO;
import Model.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class AdminActionController extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String Action = request.getParameter("Action");
        int id = Integer.parseInt(request.getParameter("id"));
        AdminDAO adminDAO = new AdminDAO();
        if(Action!=null){
            if(Action.equals("Add") || Action.equals("Edit")){
                try {
                    Admin admin = new Admin();
                    admin.setTen(request.getParameter("ten"));
                    admin.setGioiTinh(Boolean.parseBoolean(request.getParameter("gioi_tinh")));
                    admin.setNgaySinh(Common.DinhDangNgay(request.getParameter("ngay_sinh"), "yyyy-MM-dd"));
                    admin.setSdt(Integer.parseInt(request.getParameter("sdt")));
                    admin.setUserName(request.getParameter("User").trim());
                    admin.setPassWowd(request.getParameter("Pass").trim());
                    if(Action.equals("Add")){
                        admin.setId(0);
                        adminDAO.Add(admin);
                    }else if(Action.equals("Edit")){
                        admin.setId(Integer.parseInt(request.getParameter("id")));
                        adminDAO.Update(admin);
                    }
                } catch (ParseException ex) {
                    Logger.getLogger(AdminActionController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }else if(Action.equals("Delete")){
                adminDAO.Delete(id);
            } 
        }
        response.sendRedirect("Admin/index.jsp");
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
