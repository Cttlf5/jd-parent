package com.jd.mapper;

import com.jd.manager.pojo.Item;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface ItemMapper {
    public Item getItemById(String id) throws Exception;
    public void insertItem(Item item);

    public List<Item> getItemList(Integer page, Integer rows);
}
