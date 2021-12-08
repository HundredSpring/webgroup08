package controler;

import DAO.DAO;
import module.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "category", value = "/category")
public class categoryControler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cateID = req.getParameter("id");

        DAO dao = new DAO();
        List<ProductEntity> listProdByCategory = DAO.getAllProductByCategory(Integer.valueOf(cateID));
        req.setAttribute("listP", listProdByCategory);
        getServletContext().getRequestDispatcher("/shop.jsp").forward(req, resp);
    }
}
