package cn.mypro.controller;

import cn.mypro.model.Item;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
public class RestController {

    @RequestMapping("/rest")
    public String rest() {
        return "rest";
    }

    /**
     * 案例三：restful风格
     */
    @RequestMapping(value = "/rest", method = RequestMethod.POST)
    @ResponseBody
    public Item post() {
        Item item = new Item();
        item.setName("POST提交方式");
        item.setCreatetime(new Date());
        item.setDetail("restful风格测试");
        return item;
    }

    @RequestMapping(value = "/rest/{id}", method = RequestMethod.PUT)
    @ResponseBody
    public Item put(@PathVariable Integer id, HttpServletRequest request) {
        String method = request.getParameter("_method");
        System.out.println(method);
        Item item = new Item();
        item.setName("PUT提交方式");
        item.setCreatetime(new Date());
        item.setDetail("restful风格测试");
        return item;
    }

    @RequestMapping(value = "/rest/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Item get(@PathVariable(name = "id") Integer id) {
        Item item = new Item();
        item.setName("GET提交方式");
        item.setCreatetime(new Date());
        item.setDetail("restful风格测试");
        return item;
    }

    @RequestMapping(value = "/rest/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public Item delete(@PathVariable Integer id) {
        Item item = new Item();
        item.setName("DELETE提交方式");
        item.setCreatetime(new Date());
        item.setDetail("restful风格测试");
        return item;
    }

}
