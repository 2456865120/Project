package nuc.ss.service;

import nuc.ss.bean.Job;
import nuc.ss.bean.Notice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface INoticeService {
    List<Notice> getAll();
    void insert(Notice notice);
    void delete(Integer id);
    void update(Notice notice);
    Notice getById(Integer id);
    List<Notice> getByName(String name);
}
