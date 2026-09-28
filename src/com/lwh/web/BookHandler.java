package com.lwh.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
}
