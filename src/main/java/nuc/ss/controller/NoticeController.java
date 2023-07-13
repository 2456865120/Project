package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import nuc.ss.bean.Job;
import nuc.ss.bean.Notice;
import nuc.ss.service.IJobService;
import nuc.ss.service.INoticeService;
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
public class NoticeController {
    @Autowired
    private INoticeService noticeService;
    @RequestMapping("/notice/toadd")
    public String toAdd(){
        return "/notice/add";
    }
    @RequestMapping("/notice/add")
    public String add(Notice notice){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String currentDateStr = df.format(new Date());
        notice.setCreatedate(currentDateStr);
        noticeService.insert(notice);
        return "redirect:/notice/list";
    }
    @RequestMapping("/notice/toedit")
    public String toEdit(Integer id, Model model){
        Notice notice = noticeService.getById(id);
        model.addAttribute("notice",notice);
        return "/notice/edit";
    }
    @RequestMapping("/notice/edit")
    public String edit(Notice notice){
        noticeService.update(notice);
        return "redirect:/notice/list";
    }
    @RequestMapping("notice/delete")
    public String delete(Integer id){
        noticeService.delete(id);
        return "redirect:/notice/list";
    }



    @RequestMapping("/notice/list")
    public String toList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Notice> notices = noticeService.getAll();
        Page<Notice> ulist = (Page<Notice>) notices;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",notices);
        model.addAttribute("hre","notice/list");
        model.addAttribute("pageModel",pageModel);
        return "/notice/list";
    }

    @RequestMapping("/notice/search")
    public String querylist(String content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Notice> notices = noticeService.getByName(content);
        Page<Notice> ulist = (Page<Notice>) notices;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",notices);
        model.addAttribute("hre","notice/search");
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("content",content);
        return "/notice/list";
    }
}
