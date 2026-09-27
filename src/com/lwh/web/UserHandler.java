package com.lwh.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author lwh
 * @version 1.0
 */
@Controller
@RequestMapping(value = "user")
public class UserHandler {

    @RequestMapping(value = "/loginBuy",method = RequestMethod.GET)
    public String buy(){
        System.out.println("购买成功!");
        return "login_buy";
    }

    @RequestMapping(value = "/find" , params = "bookId" ,method = RequestMethod.GET)
    public String search(String bookId){
        System.out.println("查询书籍 bookId=" + bookId);
        return "login_ok";
    }

    @RequestMapping(value = "/find1", params = "bookId=1000",method = RequestMethod.GET)
    public String search1(String bookId){
        System.out.println("查询书籍 bookId=" + bookId);
        return "login_ok";
    }

    @RequestMapping(value = "/find2", params = "bookId!=1000",method = RequestMethod.GET)
    public String search2(String bookId){
        System.out.println("查询书籍 bookId=" + bookId);
        return "login_ok";
    }
}
