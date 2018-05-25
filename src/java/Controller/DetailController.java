package Controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.*;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DetailController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String ID = request.getParameter("ID");
        String LoaiSach = request.getParameter("LoaiSach");
//        ID = "1";
//        LoaiSach = "1";
        if(ID!=null && LoaiSach!=null){
            Sach item=null;
            switch(LoaiSach){
                case "1":
                     item = new SachTruyenThongDAO().getById(Integer.parseInt(ID));
                     item.LoaiSach=1;
                     
                    break;
                case "2":
                    item = new ISachChuDAO().getById(Integer.parseInt(ID));
                    item.LoaiSach=2;
                    break;
                case "3":
                    item= new ISachNoiDAO().getById(Integer.parseInt(ID));
                     item.LoaiSach=3;
                    break;
            }
            item.setBientap(new BienTapDAO().getById(item.getBientap().getId()));
            request.setAttribute("item", item);
            //request.setAttribute("ID", "1");
            //request.setAttribute("LoaiSach", "1");
            RequestDispatcher rs = request.getRequestDispatcher("./User/Detail.jsp");
            rs.forward(request, response);
            //response.sendRedirect("./User/Detail.jsp");
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
