package nuc.ss.mapper;

import nuc.ss.bean.Checkwork;
import nuc.ss.bean.Dept;
import nuc.ss.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CheckworkMapper {
    public List<Checkwork> getAll();
    Employee getByName(@Param("name") String name);
    void insert(Checkwork checkwork);
    void update(Checkwork checkwork);
    void delete(Integer id);
    Checkwork getById(@Param("id") Integer id);
    Checkwork getPById(@Param("id") Integer id);
}
