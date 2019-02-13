package cn.mypro.controller;

import cn.mypro.model.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {

    @RequestMapping("queryList")
    public ModelAndView list(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("list");
        return mav;
    }

    /**
     * 使用model的方式
     */
    @RequestMapping("queryItemById")
    public String item(Model model, Integer id){
        model.addAttribute("id",id);
        return "edit";
    }

    /**
     * 测试CharsetEncodingFilter解决中文乱码
     */
    @RequestMapping("updateItem")
    public String updateItem(Item item){
        System.out.println(item);
        return "edit";
    }
}
