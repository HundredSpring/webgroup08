package controler;

import DAO.DAO;
import Util.MyUtil;
import module.CartEntity;
import module.LineItemEntity;
import module.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "cart", value = "/cart")
public class cartControler  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String url =null;
        if(action == null){
            action = "details";

        }
        if (action.trim().equals("details")){
            url = details(req, resp);
        }else if (action.equals("addToCart")){
            url = addToDetails(req,resp);
        }else if (action.equals("update")){
            url = update(req,resp);
        }
            getServletContext().getRequestDispatcher(url).forward(req,resp);

    }

    String addToDetails(HttpServletRequest req, HttpServletResponse resp){
        String url = "";
        int id = Integer.valueOf(req.getParameter("id"));

        //tạo line item
        ProductEntity product = DAO.getProductById(id);
        LineItemEntity lineItemEntity = new LineItemEntity();
        lineItemEntity.setProduct(product);

        //lấy cart từ session
        HttpSession session = req.getSession();
        CartEntity cart = (CartEntity) session.getAttribute("cart");


        if (cart == null){
            cart = new CartEntity();
            lineItemEntity.setQuantity(1);
        }else {
            if (cart.getItemByProductId(id) == null){
                lineItemEntity.setQuantity(1);
            } else {
                lineItemEntity.setQuantity(cart.getItemByProductId(id).getQuantity() + 1);
            }
        }

        cart.addItem(lineItemEntity);
        session.setAttribute("cart", cart);
        req.setAttribute("cart",cart);

        url = "/cart.jsp";
        return  url;
    }
    String update(HttpServletRequest req, HttpServletResponse resp){
        String url = "";
        String id = req.getParameter("id");
        String quantityString = req.getParameter("quantity");

        //lấy cart từ session
        HttpSession session = req.getSession();
        CartEntity cart = (CartEntity) session.getAttribute("cart");
        if (cart == null){
            cart = new CartEntity();
        }
        int quantity;
        if (MyUtil.isInteger(quantityString)){
            quantity = Integer.parseInt(quantityString);
            if (quantity < 0 ){
                quantity = 1;
            }
        }else {
            quantity = 1;
        }

        //lấy product từ database
        ProductEntity product = DAO.getProductById(Integer.valueOf(id));
        LineItemEntity lineItem = new LineItemEntity();
        lineItem.setProduct(product);
        lineItem.setQuantity(quantity);
        if (quantity > 0){
            cart.addItem(lineItem);
        }else if (quantity == 0){
            cart.removeItem(lineItem);
        }

        session.setAttribute("cart", cart);
        req.setAttribute("cart",cart);

        url = "/cart.jsp";
        return  url;
    }

    String details (HttpServletRequest req, HttpServletResponse resp){
        String url = "/";

        HttpSession session = req.getSession();
        CartEntity cart = (CartEntity) session.getAttribute("cart");
        if (cart == null){
            cart = new CartEntity();
        }
        session.setAttribute("cart", cart);
        url = "/cart.jsp";
        return url;
    }


}
