package module;

import java.io.Serializable;
import java.util.ArrayList;

public class CartEntity implements Serializable {
    private ArrayList<LineItemEntity> items;



    public CartEntity() {
        items = new ArrayList<LineItemEntity>();
    }

    public ArrayList<LineItemEntity> getItems() {
        return items;
    }

    public LineItemEntity getItemByProductId(int id) {
        for (int i = 0; i < items.size(); i++) {
            LineItemEntity lineItemEntity = items.get(i);
            if (lineItemEntity.getProduct().getId()== id) {
                return lineItemEntity;
            }
        }

        return null;
    }

    public int getCount() {
        return items.size();
    }

    public Double getSumTotal() {
        double sumTotal = 0;
        for (int i = 0; i < items.size();i++){
            LineItemEntity lineItemEntity = items.get(i);
            sumTotal = sumTotal + lineItemEntity.getTotal();
        }
        return sumTotal;
    }

    public void addItem(LineItemEntity item) {
        int id = item.getProduct().getId();
        int quantity = item.getQuantity();
        for (int i = 0; i < items.size(); i++) {
            LineItemEntity lineItemEntity = items.get(i);
            if (lineItemEntity.getProduct().getId()== id) {
                lineItemEntity.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(LineItemEntity item) {
        int id = item.getProduct().getId();
        for (int i = 0; i < items.size(); i++) {
            LineItemEntity lineItemEntity = items.get(i);
            if (lineItemEntity.getProduct().getId()== id) {
                items.remove(i);
                return;
            }
        }
    }

}
