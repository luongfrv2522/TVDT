/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Action;

import Controller.Login.Common;
import DAO.NguoiDocDAO;
import DAO.TheLoaiSachDAO;
import Model.Theloaisach;
import Model.Theloaisach;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class TheloaisachActionController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        TheLoaiSachDAO theLoaiSachDAO = new TheLoaiSachDAO();
        String id = request.getParameter("id");
        String Action = request.getParameter("Action");
//        Action = "Edit";
//        id = "11";
        if(Action.equals("Delete")){
            theLoaiSachDAO.Delete(Integer.parseInt(id));
            response.sendRedirect("Admin/theloaisach.jsp");
        }
        if(request.getParameter("Excute")!=null){
            Theloaisach admin = new Theloaisach();
            admin.setTen(request.getParameter("ten"));
            if(Action.equals("Add")){
                admin.setId(0);
                theLoaiSachDAO.Add(admin);
            }else if(Action.equals("Edit")){
                admin.setId(Integer.parseInt(request.getParameter("id")));
                theLoaiSachDAO.Update(admin);
            }
            response.sendRedirect("Admin/theloaisach.jsp");
            
        }else{
            if(Action.equals("Edit")){
                Theloaisach bien = theLoaiSachDAO.getById(Integer.parseInt(id));
                request.setAttribute("item", bien);
                RequestDispatcher rs = request.getRequestDispatcher("Admin/theloaisach_edit.jsp");
                rs.forward(request, response);
            }
            if(Action.equals("Add")){
                response.sendRedirect("Admin/theloaisach_add.jsp");
            }
            
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
