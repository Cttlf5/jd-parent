package com.jd.controller;

import com.common.PageModel;
import com.jd.manager.pojo.Item;
import com.jd.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ItemController {
    @Autowired
    private ItemService itemService;

    /**
     *
     * @param id 商品ID
     * @return json格式商品详情
     * @throws Exception
     */
    @RequestMapping("/item/{id}")
    @ResponseBody
    public Item getItemById(@PathVariable String id) throws Exception {
        Item item =itemService.getItemById(id);
        return item;
    }

    /**
     *
     * @param page 开始页码
     * @param rows 每页行数
     * @return 商品列表
     */

    @RequestMapping("/item_list")
    @ResponseBody
    public PageModel<Item> getItemList(@RequestParam(value = "page") Integer page, @RequestParam(value = "rows",required = false) Integer rows) throws Exception {
        PageModel<Item> list = itemService.getItemList(page,rows);
        return list;
    }
}
