
package Controller.Login;

import Model.Admin;
import DAO.*;
import javax.servlet.http.HttpSession;

public class Login {
    public static int checkLogin(String u, String p){
        u=u.trim();
        p=p.trim();
        AdminDAO adminDAO = new AdminDAO();
        for(Admin admin : adminDAO.getList()){
            if(admin.getUserName().equals(u) && admin.getPassWowd().equals(p)){
                return admin.getId();
            }
        }
        return 0;
    }
}
