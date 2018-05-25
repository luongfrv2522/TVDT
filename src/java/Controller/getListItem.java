/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.Login.Common;
import static Controller.Login.Common.getListSach;
import DAO.*;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class getListItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        //
        String TheLoaiSach = request.getParameter("TheLoaiSach");
        //TheLoaiSach = "1";
        List<Sach> listSach=new LinkedList<Sach>();
        if(TheLoaiSach!=null&&!TheLoaiSach.equals("0")){
            for(Sach item : getListSach()){
                if(item.getTheloaisach().getId()== Integer.parseInt(TheLoaiSach)){
                    listSach.add(item);
                }
            }
        }
        //
        String LoaiSach = request.getParameter("LoaiSach");
        if(LoaiSach!=null&&!LoaiSach.equals("0")){
            listSach.clear();
            for(Sach item : getListSach()){
                if(item.LoaiSach == Integer.parseInt(LoaiSach)){
                    listSach.add(item);
                }
            }
        }
        //
        String ThuocTinh = request.getParameter("ThuocTinh");
        String Keyword = request.getParameter("Keyword");
//        ThuocTinh = "3";
//        Keyword = "luong";
        if(ThuocTinh!=null&&!ThuocTinh.equals("0")){
            listSach.clear();
            if(ThuocTinh.equals("1")){
                List<Sach> temp;
                QuerryDAO<Sach> querryDAO = new QuerryDAO<Sach>();
                
                temp = querryDAO.search("Sachtruyenthong", "Ten", Keyword);
                Common.setLoaiSach(temp, 1);
                listSach.addAll(temp);
                
                temp = querryDAO.search("Isachchu", "Ten", Keyword);
                Common.setLoaiSach(temp, 2);
                listSach.addAll(temp);
                
                temp = querryDAO.search("Isachnoi", "Ten", Keyword);
                Common.setLoaiSach(temp, 3);
                listSach.addAll(temp);
            }else if(ThuocTinh.equals("2")){
                QuerryDAO<Tacgia> querryDAO = new QuerryDAO<>();
                List<Tacgia> listTacgia =querryDAO.search("Tacgia", "Ten", Keyword);
                for(Sach item : getListSach()){
                    for(Tacgia tacgia : listTacgia){
                        if(item.getTacgia().getId() == tacgia.getId()){
                            listSach.add(item);
                        }
                    }
                }
            }else if(ThuocTinh.equals("3")){
                //listSach.addAll(querryDAO.search("Nguoidoc", "Ten", Keyword));
                QuerryDAO<Nguoidoc> querryDAO = new QuerryDAO<Nguoidoc>();
                List<Nguoidoc> listNguoidoc =querryDAO.search("Nguoidoc", "Ten", Keyword);
                for(Sach item : new ISachNoiDAO().getList()){
                    for(Nguoidoc nguoidoc : listNguoidoc){
                        if(item.getTacgia().getId() == nguoidoc.getId()){
                            item.LoaiSach = 3;
                            listSach.add(item);
                        }
                    }
                }
            }else if(ThuocTinh.equals("4")){
                //listSach.addAll(querryDAO.search("Bientap", "Ten", Keyword));
                QuerryDAO<Bientap> querryDAO = new QuerryDAO<Bientap>();
                List<Bientap> listBientap =querryDAO.search("Bientap", "Ten", Keyword);
                for(Sach item : getListSach()){
                    for(Bientap bientap : listBientap){
                        if(item.getTacgia().getId() == bientap.getId()){
                            listSach.add(item);
                        }
                    }
                }
            }
            
        }
        request.setAttribute("listSach", listSach);
        RequestDispatcher rs = request.getRequestDispatcher("common/list_content_item.jsp");
        rs.forward(request, response);
        //response.sendRedirect("/TVDT_FI1/common/list_content_item.jsp");
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
