package nuc.ss.mapper;

import nuc.ss.bean.Salary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SalaryMapper {
    List<Salary> getAll();
    void insert(Salary salary);
    void update(Salary salary);
    Salary getBtId(@Param("id") Integer id);
}
