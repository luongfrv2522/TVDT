/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Action;

import Controller.Login.Common;
import DAO.BienTapDAO;
import DAO.SachTruyenThongDAO;
import DAO.TacGiaDAO;
import DAO.TheLoaiSachDAO;
import Model.Sachtruyenthong;
import Model.Tacgia;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
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
public class SachtruyenthongActionController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        SachTruyenThongDAO sachTruyenThongDAO = new SachTruyenThongDAO();
        String id = request.getParameter("id");
        String Action = request.getParameter("Action");
//        Action = "Edit";
//        id = "11";
        if(Action.equals("Delete")){
            sachTruyenThongDAO.Delete(Integer.parseInt(id));
            response.sendRedirect("Admin/sachtruyenthong.jsp");
        }
        if(request.getParameter("Excute")!=null){
            try {
                Sachtruyenthong admin = new Sachtruyenthong();
                admin.setTen(request.getParameter("ten"));
                admin.setAnhBia(request.getParameter("anh_bia"));
                admin.setTomTat(request.getParameter("tom_tat"));
                admin.setTacgia(new TacGiaDAO().getById(Integer.valueOf(request.getParameter("tac_gia"))));
                admin.setBientap(new BienTapDAO().getById(Integer.valueOf(request.getParameter("bien_tap"))));
                admin.setTheloaisach(new TheLoaiSachDAO().getById(Integer.valueOf(request.getParameter("the_loai"))));
                admin.setTrangThai(Integer.valueOf(request.getParameter("trang_thai")));
  
                admin.setNgayXuatBan(Common.DinhDangNgay(request.getParameter("ngay_xuat_ban"), "yyyy-MM-dd"));
                admin.setNgayCapNhat(new Date());
                admin.setNgayTao(new Date());
                if(Action.equals("Add")){
                    admin.setId(0);
                    sachTruyenThongDAO.Add(admin);
                }else if(Action.equals("Edit")){
                    admin.setId(Integer.parseInt(request.getParameter("id")));
                    sachTruyenThongDAO.Update(admin);
                }
            response.sendRedirect("Admin/sachtruyenthong.jsp");
            } catch (ParseException ex) {
                Logger.getLogger(TacGiaActionController.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }else{
            if(Action.equals("Edit")){
                Sachtruyenthong bien = sachTruyenThongDAO.getById(Integer.parseInt(id));
                request.setAttribute("item", bien);
                RequestDispatcher rs = request.getRequestDispatcher("Admin/sachtruyenthong_edit.jsp");
                rs.forward(request, response);
            }
            if(Action.equals("Add")){
                response.sendRedirect("Admin/sachtruyenthong_add.jsp");
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
