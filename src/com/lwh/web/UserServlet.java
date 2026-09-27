package com.lwh.web;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author lwh
 * @version 1.0
 * 将该类视为一个 控制器。注入到容器中
 */
@Controller  // 本质上是 handler 处理器，或者控制器。
public class UserServlet {

//    编写方法响应用户的请求。

    /**  ip+端口。
     * h://l:8080/web工程路径/login
     * @return
     */
    @RequestMapping(value = "/login")
    public String login(){
        System.out.println("login_ok!");
        return "login_ok";  // 然后在通过视图解析器会返回给那个包。
    }
}
