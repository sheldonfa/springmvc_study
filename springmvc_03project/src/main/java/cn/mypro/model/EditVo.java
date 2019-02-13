package cn.mypro.model;

import java.util.ArrayList;
import java.util.List;

public class EditVo {
    List<Item> items;

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        return "EditVo{" +
                "items=" + items +
                '}';
    }
}
