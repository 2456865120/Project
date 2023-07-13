package nuc.ss.mapper;

import nuc.ss.bean.Job;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface JobMapper {
    List<Job> getAll();
    void insert(Job job);
    void delete(@Param("id") Integer id);
    void update(Job job);
    Job getById(@Param("id") Integer id);
    List<Job> getByName(@Param("name") String name);
}
