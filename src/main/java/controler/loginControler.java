package controler;


import DAO.DAO;
import module.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class loginControler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        String password = req.getParameter("pass");
        DAO dao =new DAO();

        UserEntity u =DAO.login(user,password);
        if (u == null){
            req.setAttribute("mess","Wrong User name or password");
            req.getRequestDispatcher("/index.jsp").forward(req,resp);

        }else {
//            req.getRequestDispatcher("/shop").forward(req,resp);
            resp.sendRedirect("/index.jsp/shop");
        }
    }


}
