package cn.sg.controller;

import cn.sg.pojo.User;
import cn.sg.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    //controller层调service层
    @Autowired
    @Qualifier("UserServiceImpl")//把指定的类加载过来，这里要用到UserService这个类
    private UserService userService;

    //跳转登陆界面
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }


    //注册
    @RequestMapping("/addUser")
    public String add(User user){
        userService.add(user);
        return "login";

    }

    @RequestMapping("/check")
    //登陆验证
    public String Check(User user, HttpSession session, HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user1 = userService.select(username);
        System.out.println(user1);
        if(user1!=null && password.equals(user1.getPassword())){
            session.setAttribute("user",user1.getUsername());
            return "redirect:/index.jsp";
        }
        else {
            return "login";
        }
    }


    //退出登录
    @RequestMapping("/logout")
    public String Logout(HttpSession session) {
        session.invalidate();
        return "redirect:/user/toLogin";
    }

    //跳转到注册页面
    @RequestMapping("/toAdd")
    public String toAddPage(){
        return "register";
    }

    //跳转到个人主页
    @RequestMapping("/toUserMain")
    public String toUserMain() {

        return "user_main";
    }
}