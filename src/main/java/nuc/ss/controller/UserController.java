package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import nuc.ss.bean.Employee;
import nuc.ss.bean.Status_inf;
import nuc.ss.bean.User_inf;
import nuc.ss.mapper.EmployeeMapper;
import nuc.ss.service.IStatusService;
import nuc.ss.service.IUserService;
import nuc.ss.util.PageModel;
import nuc.ss.util.ShiroMd5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private IUserService userService;
    @Autowired
    private IStatusService statusService;
    @Autowired
    private EmployeeMapper employeeMapper;
    @RequestMapping("/user/toadd")
    public String toadd(Model model){
        List<Employee> employees = employeeMapper.getAll();
        model.addAttribute("emp_list",employees);
        return "/user/add";
    }

    @RequestMapping("/user/add")
    public String add(User_inf user_inf){
        String pwd = ShiroMd5.getMd5(user_inf.getPassword(),user_inf.getLoginname());
        user_inf.setPassword(pwd);
        userService.regist(user_inf);
        return "redirect:/user/list";
    }

    @RequestMapping("/user/toedit")
    public String toEdit(Integer id,Model model){
        List<Employee> employees = employeeMapper.getAll();
        model.addAttribute("emp_list",employees);
        List<Status_inf> statusInfs = statusService.getAll();
        model.addAttribute("status_list",statusInfs);
        User_inf user_inf = userService.getById(id);
        model.addAttribute("user",user_inf);
        return "/user/edit";
    }

    @RequestMapping("/user/edit")
    public String edit(User_inf user_inf){
        userService.update(user_inf);
        return "redirect:/user/list";
    }

    @RequestMapping("/user/delete")
    public String delete(Integer id){
        userService.delete(id);
        return "redirect:/user/list";
    }

    @RequestMapping("user/list")
    public String toUserList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<User_inf> user = userService.getAll();
        Page<User_inf> page = (Page<User_inf>) user;
        pageModel.setRecordCount((int) page.getTotal());
        pageModel.setPageIndex(pageIndex);
        model.addAttribute("list",user);
        model.addAttribute("pageModel",pageModel);
        List<Status_inf> status = statusService.getAll();
        for (Status_inf statusInf:status){
            if (statusInf.getId()==1){
                model.addAttribute("str1",statusInf.getName());
            }
            if (statusInf.getId()==2){
                model.addAttribute("str2",statusInf.getName());
            }
        }
        model.addAttribute("hre","user/list");
        return "user/list";
    }

    @RequestMapping("user/querylist")
    public String querylist(String content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<User_inf> user = userService.getAllByName(content);
        Page<User_inf> page = (Page<User_inf>) user;
        pageModel.setRecordCount((int) page.getTotal());
        pageModel.setPageIndex(pageIndex);
        model.addAttribute("list",user);
        model.addAttribute("pageModel",pageModel);
        List<Status_inf> status = statusService.getAll();
        for (Status_inf statusInf:status){
            if (statusInf.getId()==1){
                model.addAttribute("str1",statusInf.getName());
            }
            if (statusInf.getId()==2){
                model.addAttribute("str2",statusInf.getName());
            }
        }
        model.addAttribute("hre","user/querylist");
        model.addAttribute("content",content);
        return "user/list";
    }
    @RequestMapping("/user/topedit")
    public String toPedit(Integer id,Model model){
        User_inf user = userService.getById(id);
        model.addAttribute("user",user);
        return "user/pedit";
    }
    @RequestMapping("/user/pedit")
    public String pedit(User_inf user_inf){
        String pwd = ShiroMd5.getMd5(user_inf.getPassword(),user_inf.getLoginname());
        user_inf.setPassword(pwd);
        userService.uppdate(user_inf);
        return "redirect:/dologin";
    }
}
