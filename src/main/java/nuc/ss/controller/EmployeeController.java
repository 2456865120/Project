package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import nuc.ss.bean.*;
import nuc.ss.service.*;


import nuc.ss.util.PageModel;
import org.apache.poi.ss.usermodel.Cell;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private IEmployeeService employeeService;
    @Autowired
    private ISexService sexService;
    @Autowired
    private IEducationService educationService;
    @Autowired
    private IDeptService deptService;
    @Autowired
    private IJobService jobService;
    @RequestMapping("/employee/toadd")
    public String toAdd(Model model){
        List<Sex> sex_list = sexService.getAll();
        model.addAttribute("sex_list",sex_list);
        List<Education> education_list = educationService.getAll();
        model.addAttribute("education_list",education_list);
        List<Dept> dept_list = deptService.getAll();
        model.addAttribute("dept_list",dept_list);
        List<Job> job_list = jobService.getAll();
        model.addAttribute("job_list",job_list);
        return "/employee/add";
    }


    @RequestMapping("/employee/add")
    public String add(Employee employee){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        employee.setCreatTimeStr(currentDateStr);
        employeeService.insert(employee);
        return "redirect:/employee/list";
    }
    @RequestMapping("/employee/toedit")
    public String toEdit(Integer id, Model model){
        Employee employee = employeeService.getById(id);
        model.addAttribute("employee",employee);
        List<Sex> sex_list = sexService.getAll();
        model.addAttribute("sex_list",sex_list);
        List<Education> education_list = educationService.getAll();
        model.addAttribute("education_list",education_list);
        List<Dept> dept_list = deptService.getAll();
        model.addAttribute("dept_list",dept_list);
        List<Job> job_list = jobService.getAll();
        model.addAttribute("job_list",job_list);
        return "/employee/edit";
    }
    @RequestMapping("/employee/edit")
    public String edit(Employee employee){
        employeeService.update(employee);
        return "redirect:/employee/list";
    }
    @RequestMapping("employee/delete")
    public String delete(Integer id){
        employeeService.delete(id);
        return "redirect:/employee/list";
    }




    @RequestMapping("/employee/list")
    public String toList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Employee> employees = employeeService.getAll();
        Page<Employee> ulist = (Page<Employee>) employees;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",employees);
        model.addAttribute("hre","employee/list");
        model.addAttribute("pageModel",pageModel);
        return "/employee/list";
    }

    @RequestMapping("/employee/querylist")
    public String querylist(String content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Employee> employees =employeeService.getByName(content);
        Page<Employee> ulist = (Page<Employee>) employees;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",employees);
        model.addAttribute("hre","employee/querylist");
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("content",content);
        return "/employee/list";
    }
    @RequestMapping("/employee/topiliang")
    public String topiliang(){
        return "/employee/pladd";
    }
    @RequestMapping("/employee/piliang")
    public String toMultipleInsert(HttpServletRequest request, HttpServletResponse response,  MultipartFile file) throws IOException {
        request.setCharacterEncoding("UTF-8");
        byte[] byteArr=file.getBytes();
        InputStream inputStream=new ByteArrayInputStream(byteArr);

        List<Employee> employeeList =new ArrayList<>();
        //1、获取个作簿
        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file.getInputStream());
        //2、获取工作表
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);
        int firstRowNum=sheet.getFirstRowNum();
        int lastRowNum = sheet.getLastRowNum();
        for (int i = firstRowNum; i <= lastRowNum; i++) {
            XSSFRow row = sheet.getRow(i);
            if (row != null) {
                List<String> list = new ArrayList<>();  //将读取的内容弄放到list集合中
                for (Cell cell : row) {
                    if (cell != null) {
//                        cell.setCellType(Cell.CELL_TYPE_STRING); //设置格式为string
                        String value = cell.getStringCellValue();//读取数据
                        if (value!=null &&!"".equals(value)) {  //内容不为空才放进list里
                            list.add(value);
                        }
                    }
                }
                if (list.size() > 0) {
                    Employee employee = new Employee(); //放进实体类中
                    employee.setId(Integer.parseInt(list.get(0)));
                    employee.setDeptId(Integer.parseInt(list.get(1)));
                    employee.setJobId(Integer.parseInt(list.get(2)));
                    employee.setName(list.get(3));
                    employee.setCardId(list.get(4));
                    employee.setAddress(list.get(5));
                    employee.setPhone(list.get(6));
                    employee.setSexId(Integer.parseInt(list.get(7)));
                    employee.setEducationId(Integer.parseInt(list.get(8)));
                    employeeList.add(employee);  //将实体类放进专门存储多个产品的表
                }
            }
        }
        employeeService.addMultiple(employeeList);
        return "redirect:/employee/list";
    }

    @RequestMapping("employee/plist")
    public String toPlist(Integer id,Model model){
        Employee employee = employeeService.getById(id);
        model.addAttribute("employee",employee);
        return "employee/plist";
    }
    @RequestMapping("employee/topadd")
    public String toPAdd(Model model){
        List<Sex> sex_list = sexService.getAll();
        model.addAttribute("sex_list",sex_list);
        List<Education> education_list = educationService.getAll();
        model.addAttribute("education_list",education_list);
        List<Dept> dept_list = deptService.getAll();
        model.addAttribute("dept_list",dept_list);
        List<Job> job_list = jobService.getAll();
        model.addAttribute("job_list",job_list);
        return "/employee/padd";
    }
    @RequestMapping("/employee/padd")
    public String pAdd(Employee employee){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        employee.setCreatTimeStr(currentDateStr);
        employeeService.insert(employee);
        return "redirect:/employee/topadd";
    }
    @RequestMapping("/employee/topedit")
    public String toPDeit(Integer id,Model model){
        Employee employee = employeeService.getById(id);
        model.addAttribute("employee",employee);
        List<Sex> sex_list = sexService.getAll();
        model.addAttribute("sex_list",sex_list);
        List<Education> education_list = educationService.getAll();
        model.addAttribute("education_list",education_list);
        List<Dept> dept_list = deptService.getAll();
        model.addAttribute("dept_list",dept_list);
        List<Job> job_list = jobService.getAll();
        model.addAttribute("job_list",job_list);
        return "/employee/pedit";
    }
    @RequestMapping("/employee/pedit")
    public String pedit(Employee employee){
        employeeService.uppdate(employee);
        return "redirect:/employee/topedit";
    }

}
