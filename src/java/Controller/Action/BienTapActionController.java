/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Action;

import Controller.Login.Common;
import DAO.BienTapDAO;
import Model.Bientap;
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
public class BienTapActionController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        BienTapDAO bienTapDAO = new BienTapDAO();
        String id = request.getParameter("id");
        String Action = request.getParameter("Action");
//        Action = "Edit";
//        id = "11";
        if(Action.equals("Delete")){
            bienTapDAO.Delete(Integer.parseInt(id));
            response.sendRedirect("Admin/bientap.jsp");
        }
        if(request.getParameter("Excute")!=null){
            try {
                Bientap admin = new Bientap();
                admin.setTen(request.getParameter("ten"));
                admin.setGioiTinh(Boolean.parseBoolean(request.getParameter("gioi_tinh")));
                admin.setNgaySinh(Common.DinhDangNgay(request.getParameter("ngay_sinh"), "yyyy-MM-dd"));
                admin.setSdt(Long.parseLong(request.getParameter("sdt")));
                admin.setNhanVienChinhThuc(Boolean.valueOf(request.getParameter("chinh_thuc")));
                if(Action.equals("Add")){
                    admin.setId(0);
                    bienTapDAO.Add(admin);
                }else if(Action.equals("Edit")){
                    admin.setId(Integer.parseInt(request.getParameter("id")));
                    bienTapDAO.Update(admin);
                }
            response.sendRedirect("Admin/bientap.jsp");
            } catch (ParseException ex) {
                Logger.getLogger(BienTapActionController.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }else{
            if(Action.equals("Edit")){
                Bientap bien = bienTapDAO.getById(Integer.parseInt(id));
                request.setAttribute("item", bien);
                RequestDispatcher rs = request.getRequestDispatcher("Admin/bientap_edit.jsp");
                rs.forward(request, response);
            }
            if(Action.equals("Add")){
                response.sendRedirect("Admin/bientap_add.jsp");
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
