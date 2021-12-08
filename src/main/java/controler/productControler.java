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

@WebServlet(name = "detail", value = "/detail")
public class productControler  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("pid");

        DAO dao = new DAO();
        ProductEntity ProdByID = DAO.getProductById(Integer.valueOf(id));
        req.setAttribute("detailP", ProdByID);
        getServletContext().getRequestDispatcher("/product.jsp").forward(req, resp);

    }
}
