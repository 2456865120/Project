package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import nuc.ss.bean.UserVisit;
import nuc.ss.service.IUserVisitService;
import nuc.ss.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserVisitController {
    @Autowired
    private IUserVisitService userVisitService;
    @RequestMapping("uservisit/list")
    public String toUserVister(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<UserVisit> userVisits = userVisitService.queryAll();
        Page<UserVisit> ulist = (Page<UserVisit>) userVisits;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",userVisits);
        model.addAttribute("hre","uservisit/list");
        model.addAttribute("pageModel",pageModel);
        return "uservisit/list";
    }

    @RequestMapping("uservisit/querylist")
    public String querylist(String content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<UserVisit> userVisits = userVisitService.queryByIp(content);
        Page<UserVisit> ulist = (Page<UserVisit>) userVisits;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",userVisits);
        model.addAttribute("hre","uservisit/querylist");
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("content",content);
        return "uservisit/list";
    }

    @RequestMapping("/uservisit/delete")
    public String delete(Integer id){
        userVisitService.deleter(id);
        return "redirect:/uservisit/list";
    }
}
