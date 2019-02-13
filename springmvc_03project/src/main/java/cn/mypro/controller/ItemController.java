package cn.mypro.controller;

import cn.mypro.model.EditVo;
import cn.mypro.model.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ItemController {

    @RequestMapping("list")
    public String list(){
        return "list";
    }

    /**
     *
     * 案例一：数组参数类型
     * 作用：批量删除等功能
     */
    @RequestMapping("deleteItem")
    public String item(Integer[] ids){
        for (int i = 0; i < ids.length; i++) {
            System.out.println(ids[i]);
        }
        return "edit";
    }

    /**
     * 如果强行用list接收，必须要加上@RequestParam("ids")，不知道为什么
     */
    @RequestMapping("deleteItem2")
    public String item2(@RequestParam("ids") ArrayList<Integer> ids){
        for (int i = 0; i < ids.size(); i++) {
            System.out.println(ids.get(i));
        }
        return "edit";
    }

    /**
     * 案例二：列表参数类型
     * 作用：批量修改等功能
     */
    @RequestMapping("editItem")
    public String editItem(EditVo vo){
        System.out.println(vo);
        return "edit";
    }
}
