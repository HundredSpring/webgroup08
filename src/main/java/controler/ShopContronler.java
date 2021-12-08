package controler;


import DAO.DAO;
import module.LoaihangEntity;
import module.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Shop", value = "/shop")
public class ShopContronler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cateID = req.getParameter("id");
        if (cateID == null)
        {
            List<ProductEntity> productEntities = DAO.getAllProduct();
            req.setAttribute("listP", productEntities);

            List<LoaihangEntity> CategoryEntities = DAO.getAllCategory();
            req.setAttribute("listC",CategoryEntities);
        }else
        {
            List<ProductEntity> productEntities = DAO.getAllProductByCategory(Integer.valueOf(cateID));
            req.setAttribute("listP", productEntities);

            List<LoaihangEntity> CategoryEntities = DAO.getAllCategory();
            req.setAttribute("listC",CategoryEntities);
        }

        getServletContext().getRequestDispatcher("/shop.jsp").forward(req,resp);
    }
}
