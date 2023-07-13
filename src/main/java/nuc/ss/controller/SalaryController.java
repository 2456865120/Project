package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import nuc.ss.bean.Dept;
import nuc.ss.bean.Employee;
import nuc.ss.bean.Job;
import nuc.ss.bean.Salary;
import nuc.ss.service.*;
import nuc.ss.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class SalaryController {
    @Autowired
    private IEmployeeService employeeService;
    @Autowired
    private IDeptService deptService;
    @Autowired
    private IJobService jobService;
    @Autowired
    private ISalaryService salaryService;
    @Autowired
    private ICheckworkService checkworkService;
    @RequestMapping("/salary/toadd")
    public String toAdd(){
        return "/salary/add";
    }
    @RequestMapping("/salary/add")
    public String add(Salary salary,String employeename){
        Employee employee = checkworkService.getByName(employeename);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        salary.setDeptId(employee.getDeptId());
        salary.setEmpId(employee.getId());
        salary.setJobId(employee.getJobId());
        salary.setCreateDate(currentDateStr);
        salaryService.insert(salary);
        return "redirect:/salary/list";
    }

    @RequestMapping("/salary/toedit")
    public String toEdit(Integer id,Model model){
        Salary salary = salaryService.getBtId(id);
        List<Dept> dept_list = deptService.getAll();
        model.addAttribute("dept_list",dept_list);
        List<Job> job_list = jobService.getAll();
        model.addAttribute("job_list",job_list);
        model.addAttribute("salary",salary);
        return "/salary/edit";
    }

    @RequestMapping("/salary/edit")
    public String edit(Salary salary){
        salaryService.update(salary);
        return "redirect:/salary/list";
    }


    @RequestMapping("/salary/list")
    public String list(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Salary> salarys = salaryService.getAll();
        Page<Salary> ulist = (Page<Salary>) salarys;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",salarys);
        model.addAttribute("hre","salary/list");
        model.addAttribute("pageModel",pageModel);
        return "/salary/list";
    }
    @RequestMapping("/salary/topedit")
    public String toPedit(Integer id,Model model){
        Salary salary = salaryService.getBtId(id);
        model.addAttribute("salary",salary);
        return "/salary/pedit";
    }
}
