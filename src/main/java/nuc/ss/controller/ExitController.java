package nuc.ss.controller;

import nuc.ss.mapper.UserVisitMapper;
import nuc.ss.service.IUserVisitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class ExitController {
    @Autowired
    private IUserVisitService iUserVisitService;
    @Autowired
    private UserVisitMapper userVisitMapper;
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
        String exitTime = df.format(new Date());
        Integer id = (Integer) session.getAttribute("id");
        iUserVisitService.updateExitTimeById(id,exitTime);
        return "loginForm";
    }
}
