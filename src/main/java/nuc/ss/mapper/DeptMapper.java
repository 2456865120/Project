package nuc.ss.mapper;

import nuc.ss.bean.Dept;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeptMapper {
    public List<Dept> getAll();
    List<Dept> getByName(@Param("name") String name);
    void insert(Dept dept);
    void update(Dept dept);
    void delete(Integer id);
    Dept getById(@Param("id") Integer id);
}
