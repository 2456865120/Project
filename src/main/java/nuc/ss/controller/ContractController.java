package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import nuc.ss.bean.*;
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
public class ContractController {
    @Autowired
    private ICheckworkService checkworkService;
    @Autowired
    private IContractService contractService;
    @Autowired
    private IEmployeeService employeeService;
    @Autowired
    private IDeptService deptService;
    @Autowired
    private IJobService jobService;
    @Autowired
    private ITrainContractService trainContractService;
    @Autowired
    private ILaborContractService laborContractService;
    @Autowired
    private IConfidentialityContractService confidentialitycontractService;
    @RequestMapping("/contract/list")
    public String toList(Model model, @RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex) {
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex, pageSize);
        List<Contract> list = contractService.getAll();
        Page<Contract> page = (Page<Contract>) list;
        pageModel.setRecordCount((int) page.getTotal());
        pageModel.setPageIndex(pageIndex);
        model.addAttribute("list", list);
        model.addAttribute("pageModel", pageModel);
        return "contract/list";
    }

    @RequestMapping("/contract/toadd")
    public String toAdd() {
        return "contract/add";
    }

    @RequestMapping("/contract/add")
    public String add(Contract contract,String employeename) {
        Employee employee = checkworkService.getByName(employeename);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());

        contract.setDeptId(employee.getDeptId());
        contract.setEmpId(employee.getId());
        contract.setJobId(employee.getJobId());
        contract.setCreateDate(currentDateStr);
        contractService.add(contract);
        return "redirect:/contract/list";
    }

    @RequestMapping("/contract/toedit")
    public String toEdit(Integer id, Model model) {
        Contract contract = contractService.getById(id);
        model.addAttribute("contract",contract);
        List<Dept> dept_list = deptService.getAll();
        model.addAttribute("dept_list",dept_list);
        List<Job> job_list = jobService.getAll();
        model.addAttribute("job_list",job_list);

        List<Traincontract> traincontracts = trainContractService.getAll();
        model.addAttribute("traincontract_list", traincontracts);
        List<Laborcontract> laborcontracts = laborContractService.getAll();
        model.addAttribute("laborcontract_list", laborcontracts);
        List<Confidentialitycontract> confidentialitycontracts = confidentialitycontractService.getAll();
        model.addAttribute("confidentialitycontract_list", confidentialitycontracts);
        return "contract/edit";
    }

    @RequestMapping("/contract/edit")
    public String edit(Contract contract) {
        contractService.update(contract);
        return "redirect:/contract/list";
    }

    @RequestMapping("/contract/delete")
    public String delete(Integer id) {
        contractService.delete(id);
        return "redirect:/contract/list";
    }
    @RequestMapping("contract/pedit")
    public String toPEdit(Integer id,Model model){
        Contract contract = contractService.getPById(id);
        model.addAttribute("contract",contract);
        return "contract/pedit";
    }

}
