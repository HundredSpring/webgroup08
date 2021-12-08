package controler;


import DAO.DAO;
import module.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "signUp", value = "/signUp")
public class signUpControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String pass = req.getParameter("password");
        String email = req.getParameter("email");

        DAO dao =new DAO();
        UserEntity u = DAO.checkUserExist(username);
        if (u==null){                   //neu user chua ton tai

            UserEntity user = new UserEntity();
            user.setUserName(username);
            user.setPassword(pass);
            user.setEmail(email);

            dao.SignUp(user);

            resp.sendRedirect("/index.jsp/shop");

        }else {
            req.setAttribute("mess2","User name existed");
            req.getRequestDispatcher("/index.jsp").forward(req,resp);


        }

    }
}
