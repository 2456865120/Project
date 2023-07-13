package nuc.ss.controller;


import nuc.ss.bean.UserVisit;
import nuc.ss.bean.User_inf;
import nuc.ss.service.IUserService;
import nuc.ss.service.IUserVisitService;
import nuc.ss.util.RandomCodeUtil;
import nuc.ss.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.StringTokenizer;


@Controller
public class LoginController {
    @Autowired
    private IUserService iUserService;
    @Autowired
    private IUserVisitService iUserVisitService;

    @RequestMapping("/dologin")
    public String doLogin() {
        return "loginForm";
    }
    @RequestMapping("/tologin")
    public String tologin() {
        return "loginForm";
    }
    @RequestMapping("/checkCode")
    public void getCode(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        RandomCodeUtil rdnu = RandomCodeUtil.Instance();
        HttpSession session = req.getSession();
        // 取得随机字符串放入Session中
        session.setAttribute("RANDOMCODE", rdnu.getString());
        // 禁止图像缓存。
        resp.setHeader("Pragma", "no-cache");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setDateHeader("Expires", 0);
        resp.setContentType("image/jpeg");
        // 将图像输出到Servlet输出流中。
        ServletOutputStream sos = resp.getOutputStream();
        ImageIO.write(rdnu.getBuffImg(), "jpeg", sos);
        sos.close();

    }

    @RequestMapping("/login")
    public String login(HttpSession session,String loginname,String password,String user_input_verifyCode, Model model,HttpServletRequest req) throws Exception {
//        String randomcode = (String) session.getAttribute("RANDOMCODE");
//        if (!randomcode.toUpperCase().equals(user_input_verifyCode.toUpperCase())) {
//            model.addAttribute("message", "验证码错误");
//            return "loginForm";
//        }
        String pwd = ShiroMd5.getMd5(password, loginname);

        User_inf user = iUserService.login(loginname, pwd);
        if (user == null) {
            model.addAttribute("message", "用户名密码错误");
            return "loginForm";
        } else {
            Integer statusId = user.getStatusId();
            if (statusId == 2) {
                model.addAttribute("message", "您无权限登录");
                return "loginForm";
            }else {
                session.setAttribute("user_session", user);
                InetAddress ip = Inet4Address.getLocalHost();
                String ip1 = ip.toString();
                String[] a = ip1.split("/");
                String ip2 = a[1];
                String agent=req.getHeader("user-agent");
                StringTokenizer st=new StringTokenizer(agent,";");
                st.nextToken();
                //得到用户的浏览器名
                String userbrowser=st.nextToken();
                //得到用户的操作系统名
//            String useros=st.nextToken();
//            String[] useros1=useros.split("/");
//            String useros2 = useros1[1];
//            String useros3 = useros1[2];

                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                String currentDateStr = df.format(new Date());

                UserVisit userVisit = new UserVisit();
                if(agent.indexOf("Android")!=-1) {
                    userVisit.setUserFrom("移动端");
                }else if(agent.indexOf("iPhone") != -1 || agent.indexOf("iPad") != -1) {
                    userVisit.setUserFrom("苹果端");
                }else {
                    userVisit.setUserFrom("PC端");
                }
                userVisit.setLoginTime(currentDateStr);
                userVisit.setLoginname(loginname);
                userVisit.setVisitIp(ip2);
//            userVisit.setBrowser(useros2);
            userVisit.setSystem(userbrowser);
//            userVisit.setVersion(useros3);
                userVisit.setUserAddress("山西");//java可以得到经度和纬度

                InetAddress addr = null;
                String address = "";
                addr = InetAddress.getLocalHost();//新建一个InetAddress类
                address = addr.getHostName().toString();// 获得本机名称

                userVisit.setIphone(address);
                iUserVisitService.addUserVisit(userVisit);
                session.setAttribute("id",userVisit.getId());
                return "index";
            }

        }
    }
    @RequestMapping("/welcome")
    public String toWelcome(){
        return "welcome";
    }
}

