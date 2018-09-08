package com.jd.manager.pojo;

import java.io.Serializable;

public class Item implements Serializable{


    private static final long serialVersionUID = 1131180282867227039L;
    private String id;
    private String itemName;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
}
