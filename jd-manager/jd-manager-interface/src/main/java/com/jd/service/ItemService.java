package com.jd.service;

import com.common.PageModel;
import com.jd.manager.pojo.Item;

import java.util.List;

public interface ItemService {
    public Item getItemById(String id) throws Exception;

    public PageModel<Item> getItemList(Integer page, Integer rows) throws Exception;
}
