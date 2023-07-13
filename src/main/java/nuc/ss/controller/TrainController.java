package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import nuc.ss.bean.*;
import nuc.ss.service.*;
import nuc.ss.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class TrainController {
    @Autowired
    private ITrainService trainService;
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
    @Autowired
    private IUserService userService;
    @RequestMapping("/train/totrain")
    public String totrain(){
        return "/train/train";
    }
    @RequestMapping("/train/admintrainlist")
    public String totrainlist(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Train> train = trainService.getAllTrain();
        Page<Train> tlist = (Page<Train>) train;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) tlist.getTotal());
        model.addAttribute("list",train);
        model.addAttribute("hre","train/admintrainlist");
        model.addAttribute("pageModel",pageModel);
        return "/train/admintrainlist";
    }
    @RequestMapping("/train/traintoadd")
    public String totrainadd(Model model){
        List<Completion> allCompletion = trainService.getAllCompletion();
        model.addAttribute("completion_list",allCompletion);
        return "/train/add";
    }

    @RequestMapping("/train/add")
    public String add(Train train, String employeename){
        Employee employee = checkworkService.getByName(employeename);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        train.setDeptId(employee.getDeptId());
        train.setEmpId(employee.getId());
        train.setJobId(employee.getJobId());
        train.setTraintime(currentDateStr);
        trainService.insertTrain(train);
        return "redirect:/train/admintrainlist";
    }
    @RequestMapping("/train/toedit")
    public String toEdit(Integer id,Model model){
        Train train = trainService.getByIdTrain(id);
        List<Completion> allCompletion = trainService.getAllCompletion();
        model.addAttribute("completion_list",allCompletion);
        model.addAttribute("train",train);
        return "/train/edit";
    }
    @RequestMapping("/train/delete")
    public String deleteTrain(Integer id){
        trainService.deleteTrain(id);
        return "redirect:/train/admintrainlist";
    }
    @RequestMapping("train/edit")
    public String editTrain(Train train){
        trainService.updateTrain(train);
        return "redirect:/train/admintrainlist";
    }
    @RequestMapping("/traindata/list")
    public String tolist(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<TrainData> trainDate = trainService.getAllTrainDate();
        Page<TrainData> tlist = (Page<TrainData>) trainDate;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) tlist.getTotal());
        model.addAttribute("list",trainDate);
        model.addAttribute("hre","traindata/list");
        model.addAttribute("pageModel",pageModel);
        return "/traindata/list";
    }
    @RequestMapping("/traindata/search")
    public String searchTrainData(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model,String content){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<TrainData> trainDate = trainService.getTrainDataBytitle(content);
        Page<TrainData> tlist = (Page<TrainData>) trainDate;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) tlist.getTotal());
        model.addAttribute("list",trainDate);
        model.addAttribute("hre","traindata/search");
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("content",content);
        return "/traindata/list";
    }
    @RequestMapping("/traindata/downLoad")
    public String download(String filename, HttpServletRequest req, HttpServletResponse resp) throws Exception {
        //获取文件位置
        String path = req.getSession().getServletContext().getRealPath("/upload");
        // 2. 通过文件输入流读取文件
        FileInputStream inputStream = new FileInputStream(new File(path, filename));
        // 4. 附件下载 attachment 附件 inline 在线打开(默认值)
        resp.setHeader("content-disposition", "attachment;fileName=" + filename);
        ServletOutputStream os = resp.getOutputStream();
        int len;
        byte[] b = new byte[1024];
        while ((len=inputStream.read(b))!=-1){
            os.write(b,0,len);
        }
        // 释放资源
        os.close();
        inputStream.close();
        return "/traindata/list";
    }
    @RequestMapping("/traindata/play")
    public String play(String filename, Model model){
        model.addAttribute("filename", filename);
        return "traindata/play";
    }
    @RequestMapping("/traindata/toadd")
    public String toadd(){
        return "/traindata/add";
    }
    @RequestMapping("/traindata/add")
    public String addTrainData(MultipartFile file,HttpServletRequest req,TrainData trainData){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        //先获取到要上传的文件目录
        String path = req.getSession().getServletContext().getRealPath("/upload");
        //获取到上传文件的名称
        String fileName = file.getOriginalFilename();
        //获取文件后缀,不包括点
        String filenameExtension = StringUtils.getFilenameExtension(fileName);
        //随机给上传的文件取名字
        String newFileName = UUID.randomUUID().toString()+"."+filenameExtension;
        try {
            file.transferTo(new File(path,newFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        trainData.setCreatedate(currentDateStr);
        trainData.setFilename(newFileName);
        trainService.insertTrainData(trainData);
        return "redirect:/traindata/list";
    }
    @RequestMapping("/traindata/toedit")
    public String toedit(Integer id,Model model){
        TrainData data = trainService.getByIdTrainData(id);
        model.addAttribute("data",data);
        return "/traindata/edit";
    }
    @RequestMapping("/traindata/edit")
    public String editTrainData(MultipartFile file,HttpServletRequest req,TrainData trainData){
        //先获取到要上传的文件目录
        String path = req.getSession().getServletContext().getRealPath("/upload");
        //获取到上传文件的名称
        String fileName = file.getOriginalFilename();
        //获取文件后缀,不包括点
        String filenameExtension = StringUtils.getFilenameExtension(fileName);
        //随机给上传的文件取名字
        String newFileName = UUID.randomUUID().toString()+"."+filenameExtension;
        try {
            file.transferTo(new File(path,newFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        trainData.setFilename(newFileName);
        trainService.updateTrainData(trainData);
        return "redirect:/traindata/list";
    }

    @RequestMapping("/traindata/delete")
    public String deleteTrainData(Integer id){
        trainService.deleteTrainData(id);
        return "redirect:/traindata/list";
    }
    @RequestMapping("/train/trainlist")
    public String toTrainList(Integer id,Model model){
        User_inf userInf = userService.getById(id);
        Train train = trainService.getByEmpIdTrain(userInf.getEmpId());
        model.addAttribute("train",train);
        return "/train/trainlist";
    }
}
