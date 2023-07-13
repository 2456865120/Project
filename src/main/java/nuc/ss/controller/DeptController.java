package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import nuc.ss.bean.Dept;
import nuc.ss.bean.UserVisit;
import nuc.ss.service.IDeptService;
import nuc.ss.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class DeptController {
    @Autowired
    private IDeptService deptService;
    @RequestMapping("/dept/toadd")
    public String toAdd(){
        return "/dept/add";
    }
    @RequestMapping("/dept/add")
    public String add(Dept dept){
        deptService.insert(dept);
        return "redirect:/dept/list";
    }
    @RequestMapping("/dept/toedit")
    public String toEdit(Integer id,Model model){
        Dept dept = deptService.getById(id);
        model.addAttribute("dept",dept);
        return "/dept/edit";
    }
    @RequestMapping("/dept/edit")
    public String edit(Dept dept){
        deptService.update(dept);
        return "redirect:/dept/list";
    }
    @RequestMapping("dept/delete")
    public String delete(Integer id){
        deptService.delete(id);
        return "redirect:/dept/list";
    }



    @RequestMapping("/dept/list")
    public String toList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Dept> depts = deptService.getAll();
        Page<Dept> ulist = (Page<Dept>) depts;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",depts);
        model.addAttribute("hre","dept/list");
        model.addAttribute("pageModel",pageModel);
        return "/dept/list";
    }

    @RequestMapping("/dept/querylist")
    public String querylist(String content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Dept> depts =deptService.getByName(content);
        Page<Dept> ulist = (Page<Dept>) depts;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",depts);
        model.addAttribute("hre","dept/querylist");
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("content",content);
        return "/dept/list";
    }
}
