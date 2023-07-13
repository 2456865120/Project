package nuc.ss.controller;

import nuc.ss.bean.User_inf;
import nuc.ss.service.IUserService;
import nuc.ss.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    private IUserService userService;

    @RequestMapping("/registCode")
    public String toRegist(){
        return "regist";
    }

    @RequestMapping(value = "/check_Register_loginname",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String check_Register_loginname(String loginname){
        User_inf user_inf = userService.check_Register_loginname(loginname);
        if (user_inf!=null){
            return "登录名已被占用";
        }else {
            return "";
        }
    }

    @RequestMapping(value = "/check_Register_username",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String check_Register_username(String username){
        User_inf user_inf = userService.check_Register_username(username);
        if (user_inf!=null){
            return "用户名已被占用";
        }else {
            return "";
        }
    }

    @RequestMapping(value = "/check_Register_email",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String check_Register_email(String email){
        User_inf user_inf = userService.check_Register_email(email);
        if (user_inf!=null){
            return "邮箱已被占用";
        }else {
            return "";
        }
    }

    @RequestMapping(value = "/check_Register_repassword",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String check_Register_repassword(String password,String repassword){
        if (!password.equals(repassword)){
            return "两次输入密码不一致";
        }else {
            return "";
        }
    }


    @RequestMapping("/register")
    public String register(User_inf user_inf, Model model){
        String pwd = ShiroMd5.getMd5(user_inf.getPassword(),user_inf.getLoginname());
        user_inf.setPassword(pwd);
        userService.regist(user_inf);
        model.addAttribute("new_message","注册成功,等待审核");
        return "loginForm";
    }
}
