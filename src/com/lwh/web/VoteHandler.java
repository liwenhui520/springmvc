package com.lwh.web;

import com.lwh.entity.Master;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lwh
 * @version 1.0
 */
@Controller
@RequestMapping("/vote")
public class VoteHandler {

    /**
     *  Get 获取请求参数
     * @param username   封装 name
     * @return 返回 web 不对外暴漏的页面
     */
    @RequestMapping("/vote01")
    public String vote01(@RequestParam(value = "name",required = false)String username){
        System.out.println("vote01--------name----------"+username);
        return "success";
    }

    /**
     * 获取请求头里面的参数
     * @param ae
     * @param host
     * @return
     */
    @RequestMapping("/vote02")
    public String vote02(@RequestHeader("Accept-Encoding") String ae,
                         @RequestHeader("Host") String host){
        System.out.println("Accept-Encoding: " + ae);
        System.out.println("Host:  "+ host);
        return "success";
    }

    /**
     * get the master of 属性
     * @param master
     * @return
     */
    @PostMapping("/vote03")
    public String vote03(Master master){
        System.out.println("获取的 master 信息： "+master);
        return "success";
    }

    /**
     * 转换成驼峰的模式。
     * @PostMapping("/vote03")
     * public String vote03(
     *         @RequestParam("master_id") String id,    // 前端叫 master_id，后端变量叫 id
     *         @RequestParam("master_name") String name,
     *         @RequestParam("pet_id") String petId,
     *         @RequestParam("pet_name") String petName) {
     *     // 手动封装...
     * }
     */


    @PostMapping("/vote04")
    public String vote04(HttpServletRequest request,HttpServletResponse response){
        System.out.println("request: "+request.getRequestURI());
        System.out.println("request: "+request.getParameter("pwd"));
        System.out.println("request: "+request.getParameter("username"));
        return "success";
    };

    @PostMapping("/vote05")
    public String vote05(Master master,HttpServletRequest request,HttpServletResponse response){
        // 1, mvc 会自动地把获取地model 模型 ，放入到 request域中，名字就是master
        // 2， 也可以手动放入到 request
        request.setAttribute("master",master);
        request.setAttribute("address","北京");
        return "vote_ok";
    }

}
