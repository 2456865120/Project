package nuc.ss.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import nuc.ss.bean.Document;

import nuc.ss.service.IDocumentService;

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

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class DocumentController {
    @Autowired
    private IDocumentService documentService;
    @RequestMapping("/document/toadd")
    public String toAdd(){
        return "/document/add";
    }
    @RequestMapping("/document/add")
    public String add(Document document, MultipartFile file, HttpServletRequest req){
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
        
        document.setCreatedate(currentDateStr);
        document.setFilename(newFileName);
        documentService.insert( document);
        return "redirect:/document/list";
    }
    @RequestMapping("/document/toedit")
    public String toEdit(Integer id, Model model){
        Document  document =  documentService.getById(id);
        model.addAttribute("document", document);
        return "/document/edit";
    }
    @RequestMapping("/document/edit")
    public String edit(Document document,MultipartFile file, HttpServletRequest req){
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
        document.setFilename(newFileName);
        documentService.update(document);
        return "redirect:/document/list";
    }
    @RequestMapping("document/delete")
    public String delete(Integer id){
        documentService.delete(id);
        return "redirect:/document/list";
    }



    @RequestMapping("/document/list")
    public String toList(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Document> documents =documentService.getAll();
        Page<Document> ulist = (Page<Document>) documents;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",documents);
        model.addAttribute("hre","document/list");
        model.addAttribute("pageModel",pageModel);
        return "/document/list";
    }

    @RequestMapping("/document/search")
    public String querylist(String content,@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, Model model){
        PageModel pageModel = new PageModel();
        Integer pageSize = pageModel.getPageSize();
        PageHelper.startPage(pageIndex,pageSize);
        List<Document> documents = documentService.getByName(content);
        Page<Document> ulist = (Page<Document>) documents;
        pageModel.setPageIndex(pageIndex);
        pageModel.setRecordCount((int) ulist.getTotal());
        model.addAttribute("list",documents);
        model.addAttribute("hre","document/search");
        model.addAttribute("pageModel",pageModel);
        model.addAttribute("content",content);
        return "/document/list";
    }

    @RequestMapping("/document/downLoad")
    public String downLoad(Integer id, HttpServletRequest req , HttpServletResponse resp) throws Exception {
        String filename = documentService.getById(id).getFilename();
        // 1. 根据下载相对目录获取下载目录在服务器部署之后绝对目录
        String path = req.getSession().getServletContext().getRealPath("/upload");
        // 2. 通过文件输入流读取文件
        FileInputStream inputStream = new FileInputStream(new File(path, filename));
        // 4. 附件下载 attachment 附件 inline 在线打开(默认值)
        resp.setHeader("content-disposition", "attachment;fileName=" + filename);

        // 5. 处理下载流复制
        ServletOutputStream os = resp.getOutputStream();
        int len;
        byte[] b = new byte[1024];
        while((len = inputStream.read(b))!=-1){
            os.write(b, 0, len);
        }
        // 释放资源
        os.close();
        inputStream.close();
        return "redirect:/document/list";
    }
}
