package nuc.ss.mapper;

import nuc.ss.bean.Job;
import nuc.ss.bean.Notice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoticeMapper {
    List<Notice> getAll();
    void insert(Notice notice);
    void delete(@Param("id") Integer id);
    void update(Notice notice);
    Notice getById(@Param("id") Integer id);
    List<Notice> getByName(@Param("name") String name);
}
