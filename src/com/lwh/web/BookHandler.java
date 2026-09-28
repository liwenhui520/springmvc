package com.lwh.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author lwh
 * @version 1.0
 */
@RequestMapping(value = "/bookHandler")
@Controller
public class BookHandler {

    @RequestMapping(value = "/book/{id}")
    public String getBook(@PathVariable("id") String id){
        System.out.println("查询书籍id "+ id);
        return "success";
    }

    /**
     * 占位符的是  @PathVariable， 当没有占位符的时候：@RequestParam
     * @param name  包装 bookName
     * @return 返回对应的success 页面
     */
    @PostMapping("/book")
    public String addBook(@RequestParam("bookName") String name){
        System.out.println("添加书籍bookName ==" + name);
        return "success";
    }

    /**
     * 你的 Controller 方法里写的是 return "success";。Spring 的视图解析器会把它翻译成 success.jsp 的路径，然后服务器内部转发过去。
     * 但是，服务器转发的底层原理，是把 DELETE 请求 转给了 success.jsp。JSP 引擎（Jasper）非常严格，它只允许 GET 请求来访问，看到 DELETE 请求就立刻拦截，报了 403 - 方法不允许
     * @param id  要删除的id
     * @return  返回 jsp 页面，但是 jsp 不支持delete 所以我们进行一个页面跳转
     */
//    @DeleteMapping("/bookDelete/{id}")
//    public String delBook(@PathVariable("id") String id){
//        System.out.println("删除书籍的id= "+id);
//        return "success";
//    }
    @DeleteMapping("/bookDelete/{id}")
    public String delBook(@PathVariable("id") String id){
        System.out.println("删除书籍的id= "+id);
        return "redirect:/bookHandler/success";
    }

    @RequestMapping(value = "/success")
    public String successGenecal(){
        return "success";
    }
}
