package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import nuc.ss.bean.Job;
import nuc.ss.service.IJobService;
import nuc.ss.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
@Controller
public class JobController {
    @Autowired
    private IJobService jobService;
    @RequestMapping("/job/toadd")
    public String toAdd(){
        return "/job/add";
    }
    @RequestMapping("/job/add")
    public String add(Job job){
        jobService.insert(job);
        return "redirect:/job/list";
    }
    @RequestMapping("/job/toedit")
    public String toEdit(Integer id, Model model){
        Job job = jobService.getById(id);
        model.addAttribute("job",job);
        return "/job/edit";
    }
    @RequestMapping("/job/edit")
    public String edit(Job job){
        jobService.update(job);
        return "redirect:/job/list";
    }
    @RequestMapping("job/delete")
    public String delete(Integer id){
        jobService.delete(id);
        return "redirect:/job/list";
    }



    @RequestMapping("/job/list")
    public String toList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Job> jobs = jobService.getAll();
        Page<Job> ulist = (Page<Job>) jobs;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",jobs);
        model.addAttribute("hre","job/list");
        model.addAttribute("pageModel",pageModel);
        return "/job/list";
    }

    @RequestMapping("/job/querylist")
    public String querylist(String content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Job> jobs =jobService.getByName(content);
        Page<Job> ulist = (Page<Job>) jobs;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",jobs);
        model.addAttribute("hre","job/querylist");
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("content",content);
        return "/job/list";
    }
}
