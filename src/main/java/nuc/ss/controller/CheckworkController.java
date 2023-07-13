package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sun.org.apache.xpath.internal.operations.Mod;
import nuc.ss.bean.*;
import nuc.ss.mapper.UserMapper;
import nuc.ss.service.*;
import nuc.ss.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class CheckworkController {
    @Autowired
    private IDeptService deptService;
    @Autowired
    private IJobService jobService;
    @Autowired
    private ICheckworkService checkworkService;
    @Autowired
    private IEmployeeService employeeService;
    @Autowired
    private ILeavelistService leavelistService;
    @Autowired
    private UserMapper userMapper;
    @RequestMapping("/checkwork/toadd")
    public String toAdd(){
        return "/checkwork/add";
    }
    @RequestMapping("/checkwork/add")
    public String add(Checkwork checkwork,String employeename,Model model){
        Employee employee = checkworkService.getByName(employeename);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        if (employee==null){
            model.addAttribute("message","用户不存在");
        }else {
            checkwork.setEmpId(employee.getId());
            checkwork.setDeptId(employee.getDeptId());
            checkwork.setJobId(employee.getJobId());
            checkwork.setCreatdate(employee.getCreatTimeStr());
            checkworkService.insert(checkwork);
        }
        return "redirect:/checkwork/list";
    }
    @RequestMapping("/checkwork/toedit")
    public String toEdit(Integer id,Model model){
        Checkwork checkwork = checkworkService.getById(id);
        checkwork.setEmployeename(employeeService.getById(checkwork.getEmpId()).getName());
        model.addAttribute("checkwork",checkwork);
        List<Dept> dept_list = deptService.getAll();
        model.addAttribute("dept_list",dept_list);
        List<Job> job_list = jobService.getAll();
        model.addAttribute("job_list",job_list);
        return "/checkwork/edit";
    }
    @RequestMapping("/checkwork/edit")
    public String edit(Checkwork checkwork){
        checkworkService.update(checkwork);
        return "redirect:/checkwork/list";
    }
    @RequestMapping("checkwork/delete")
    public String delete(Integer id){
        checkworkService.delete(id);
        return "redirect:/checkwork/list";
    }

    @RequestMapping("/checkwork/list")
    public String toList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Checkwork> checkworks = checkworkService.getAll();
        Page<Checkwork> ulist = (Page<Checkwork>) checkworks;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",checkworks);
        model.addAttribute("hre","checkwork/list");
        model.addAttribute("pageModel",pageModel);
        return "/checkwork/list";
    }
    @RequestMapping("/checkwork/search")
    public String querylist(Integer content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        return "/checkwork/list";
    }
    @RequestMapping("/checkwork/adminleavelist")
    public String toadminleavelist(Model model,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Leave> leaves = leavelistService.AdminGetAll();
        Page<Leave> ulist = (Page<Leave>) leaves;
        model.addAttribute("list",leaves);
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("hre","checkwork/adminleavelist");
        model.addAttribute("pageModel",pageModel);
        return "/checkwork/adminleavelist";
    }

    @RequestMapping("/checkwork/toadminleaveedit")
    public String toadminleaveedit(Integer id, Model model){
        List<LeaveStatus> allStatus = leavelistService.getAllStatus();
        Leave leave = leavelistService.getById(id);
        List<LeaveType> allType = leavelistService.getAllType();
        model.addAttribute("leavetype_list",allType);
        model.addAttribute("leave",leave);
        model.addAttribute("leavestatus_list",allStatus);
        return "/checkwork/adminleaveedit";
    }
    @RequestMapping("/checkwork/adminleaveedit")
    public String edit(Leave leave){
        leavelistService.update(leave);
        return "redirect:/checkwork/adminleavelist";
    }

    @RequestMapping("/adminleave/delete")
    public String deleteleave(Integer id){
        leavelistService.delete(id);
       return "redirect:/checkwork/adminleavelist";
    }
    @RequestMapping("/checkwork/topedit")
    public String toPEdit(Integer id,Model model){
        Checkwork checkwork = checkworkService.getPById(id);
        model.addAttribute("checkwork",checkwork);
        return "checkwork/pedit";
    }
    @RequestMapping("/checkwork/toleaveadd")
    public String toLeaveAdd(Model model){
        List<LeaveType> type = leavelistService.getAllType();
        model.addAttribute("leavetype_list",type);
        return "checkwork/leaveadd";
    }

    @RequestMapping("checkwork/leaveadd")
    public String addLeave(Integer userid,Leave leave){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        User_inf user = userMapper.getById(userid);
        Employee employee = employeeService.getById(user.getEmpId());
        leave.setJobId(employee.getJobId());
        leave.setEmpId(user.getEmpId());
        leave.setDeptId(employee.getDeptId());
        leave.setLeavetime(currentDateStr);
        leave.setLeavestatus(2);
        leavelistService.add(leave);
        return "redirect:/checkwork/leavelist";
    }
    @RequestMapping("/checkwork/leavelist")
    public String toLeaveList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Leave> leaves = leavelistService.AdminGetAll();
        Page<Leave> ulist = (Page<Leave>) leaves;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",leaves);
        model.addAttribute("hre","checkwork/leavelist");
        model.addAttribute("pageModel",pageModel);
        return "/checkwork/leavelist";
    }
}
