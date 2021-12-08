package module;

import java.io.Serializable;

public class LineItemEntity implements Serializable {
    private ProductEntity product;
    private int quantity;
    public LineItemEntity(){}

    public void setProduct(ProductEntity product) {
        this.product = product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public ProductEntity getProduct() {
        return product;
    }
    public int getTotal(){
        return  (product.getPrice()) * quantity;
    }

}