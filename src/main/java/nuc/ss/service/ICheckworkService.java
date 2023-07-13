package nuc.ss.service;

import nuc.ss.bean.Checkwork;
import nuc.ss.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICheckworkService {
    public List<Checkwork> getAll();
    Employee getByName(String name);
    void insert(Checkwork checkwork);
    void update(Checkwork checkwork);
    void delete(Integer id);
    Checkwork getById(Integer id);
    Checkwork getPById(Integer id);
}
