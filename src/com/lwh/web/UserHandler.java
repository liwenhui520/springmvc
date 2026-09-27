package com.lwh.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
        return "success";
    }

    /**
     * ant 通配符
     * 1. ?：匹配文件名中的一个字符
     * 2. *：匹配文件名中的任意字符
     * 3. **:匹配多层路径
     * @return
     */
    @RequestMapping(value = "**")
    public String im(){
        System.out.println("发送消息!");
        return "success";
    }

    /**
     *  占位符 /{}
     * @param name  把接收的userName 封装起来
     * @param id    把接收的userId 封装起来。 隔离前端的参数和后端的参数匹配问题
     * @return
     */
    @RequestMapping(value = "/reg/{username}/{userId}")
    public String register(@PathVariable("username")String name,
                           @PathVariable("userId") Long id){
        System.out.println("登录成功！ username:\t"+name + "\tuserId:\t" + id);
        return "success";
    }

    @RequestMapping(value = "/hi")
    public String hi(){
        System.out.println("hi()....");
        return "success";
    }

//    @RequestMapping(value = "/hi")
//    public String hi1(){
//        System.out.println("hi1()...");
//        return "success";
//    }

    @GetMapping(value = "/hello/{email}")
    public String hello(@PathVariable("email") String email){
        System.out.println("hello\t"+email);
        return "success";
    }
}
