
package Controller.Login;

import Model.Sachtruyenthong;
import Model.Isachnoi;
import Model.Isachchu;
import Model.*;
import DAO.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


public class Common {
    public static List<Sach> getListSach(){//get full sach
        List<Sach> listSach = new LinkedList<>();
        for(Sachtruyenthong x : new SachTruyenThongDAO().getList()){
            x.LoaiSach = 1;
            listSach.add(x);
        }
        for(Isachchu x : new ISachChuDAO().getList()){
            x.LoaiSach = 2;
            listSach.add(x);
        }
        for(Isachnoi x : new ISachNoiDAO().getList()){
            x.LoaiSach = 3;
            listSach.add(x);
        }
                    
        return listSach;
    }
     public static <T extends Sach> List<T> setLoaiSach(List<T> listItem, int i){
         for(T item : listItem){
             item.LoaiSach = i;
         }
         return listItem;
     }
     public static String GioiTinh(boolean x){
         return x ? "Nam" : "Nữ";
     }
     public static String DinhDangNgay(Date dateIn, String out){
        return new SimpleDateFormat(out).format(dateIn).toString();
     }
     public static Date DinhDangNgay(String data, String in) throws ParseException{
         DateFormat formatter ; 
        formatter = new SimpleDateFormat(in);
        return formatter.parse(data);
     }
     public static String noteNULL(String x){
         return x!=null||!x.equals("0")? x:"";
     }
}
