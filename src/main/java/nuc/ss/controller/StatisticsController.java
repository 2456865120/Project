package nuc.ss.controller;

import nuc.ss.bean.*;
import nuc.ss.service.IBusinessService;
import nuc.ss.service.IJobService;
import nuc.ss.service.IStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class StatisticsController {
    @Autowired
    private IStatisticsService statisticsService;
    @Autowired
    private IJobService jobService;
    @Autowired
    private IBusinessService businessService;
    @RequestMapping("/statistics")
    public String toStatistics(){
        return "/statistics/statistics";
    }
    @RequestMapping("/echartsData")
    @ResponseBody
    public List<SexCount> sexImage(){
        SexCount nan = statisticsService.getSexCount(1);
        SexCount nv = statisticsService.getSexCount(2);
        SexCount qita = statisticsService.getSexCount(6);
        List<SexCount> list = new ArrayList<>();
        list.add(nan);
        list.add(nv);
        list.add(qita);
        return list;
    }
    @RequestMapping("/echartsData1")
    @ResponseBody
    public List<EmployeeCount> employee(){
        List<EmployeeCount> list = new ArrayList<>();
        List<Job> all = jobService.getAll();
        for (Job job:all){
            EmployeeCount employeeCount = new EmployeeCount();
            employeeCount.setName(job.getName());
            employeeCount.setValue(statisticsService.getRmployee(job.getId()));
            list.add(employeeCount);
        }
        return list;
    }
    @RequestMapping("/echartsData2")
    @ResponseBody
    public List<Business> echartsData2(){
        List<Business> list = businessService.getAll();
        return list;
    }
    @RequestMapping("/echartsData3")
    @ResponseBody
    public List<Address> echartsData3(){
        List<Address> list = statisticsService.getAddress();
        return list;
    }


}
