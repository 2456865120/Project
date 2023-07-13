package nuc.ss.service;

import nuc.ss.bean.Salary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ISalaryService {
    List<Salary> getAll();
    void insert(Salary salary);
    void update(Salary salary);
    Salary getBtId(Integer id);
}
