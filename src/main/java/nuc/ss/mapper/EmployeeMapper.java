package nuc.ss.mapper;

import nuc.ss.bean.Employee;
import nuc.ss.bean.Job;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeeMapper {
    List<Employee> getAll();
    void delete(@Param("id") Integer id);
    Employee getById(@Param("id") Integer id);
    List<Employee> getByName(@Param("name") String name);
    void insert(Employee employee);
    void update(Employee employee);
    void uppdate(Employee employee);
    void addMultiple(@Param("list") List<Employee> employeeList);
}
