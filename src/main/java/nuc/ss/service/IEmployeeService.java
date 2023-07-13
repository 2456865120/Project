package nuc.ss.service;

import nuc.ss.bean.Employee;
import nuc.ss.bean.Job;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IEmployeeService {
    List<Employee> getAll();
    void insert(Employee employee);
    void delete(Integer id);
    void update(Employee employee);
    void uppdate(Employee employee);
    Employee getById(Integer id);
    List<Employee> getByName(String name);
    void addMultiple(List<Employee> employeeList);

}
