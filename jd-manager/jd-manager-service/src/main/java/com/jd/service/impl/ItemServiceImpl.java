package com.jd.service.impl;

import com.common.PageModel;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jd.manager.pojo.Item;
import com.jd.mapper.ItemMapper;
import com.jd.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemMapper itemMapper;
    @Override
    public Item getItemById(String id) throws Exception{
        Item item = itemMapper.getItemById(id);

        return item;
    }

    @Override
    public PageModel<Item> getItemList(Integer page, Integer rows) throws Exception{
        PageHelper.startPage(page,rows);
        //Page<Item>
        //PageInfo<>
        List<Item> list = itemMapper.getItemList(page,rows);
        PageInfo<Item> pageInfo = new PageInfo<Item>(list);
        PageModel<Item> pageItems = new PageModel<Item>();
        pageItems.setTotal(pageInfo.getTotal());
        pageItems.setRows(list);
        return pageItems;
    }
}
