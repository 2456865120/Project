package nuc.ss.controller;

import nuc.ss.bean.User_inf;
import nuc.ss.service.IUserService;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Controller
@RequestMapping("/password")
public class PwdController {
    @Autowired
    private RabbitTemplate rabbitTemplate;
    @Autowired
    private IUserService iUserService;
    @Autowired
    private JavaMailSenderImpl javaMailSender;
    @RequestMapping("/repassword")
    public String repassword(){return "repasswordPage";}
    @RequestMapping("/sendMail")
    public String sendMail(String loginname, String email, Model model){
//        User_inf user = iUserService.queryByLoginnameAndEmail(loginname, email);
//        if(user==null){
//            model.addAttribute("message","用户名邮箱不匹配");
//        }else {
//            // 创一个邮件对象
//            try {
//                MimeMessage message = javaMailSender.createMimeMessage();
//                MimeMessageHelper messageHelper = new MimeMessageHelper(message, false, "UTF-8");
//                messageHelper.setFrom("189778008@qq.com");//我们在spring配置的邮箱 当成邮箱服务器
//                messageHelper.setTo(email);
//                String text = "请点击连接找回密码"
//                        + " <a href='http://localhost:8080/password/toWritePwd?loginname="+loginname+"'>找回</a>";
//                String html = text;
//                messageHelper.setText(html, true);
//                // 邮件主题
//                messageHelper.setSubject("找回密码");
//                javaMailSender.send(message);
//                model.addAttribute("message","发送邮件成功");
//            } catch (MessagingException e) {
//                e.printStackTrace();
//            }
//        }
        rabbitTemplate.convertAndSend("spring_fanout_exchange", "", loginname+"-"+email);
        return "repasswordPage";
    }


    @RequestMapping("/toWritePwd?")
    public String toWritePwd(String loginname,Model model){
        model.addAttribute("loginname",loginname);
        return "findPwd";
    }


    @RequestMapping("/setPassword")
    public String setPassword(String loginname,String password,String repassword){
        iUserService.setPassword(password,loginname);
        return "loginForm";
    }

}
