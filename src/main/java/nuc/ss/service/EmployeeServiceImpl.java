package nuc.ss.service;

import nuc.ss.bean.Employee;
import nuc.ss.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmployeeServiceImpl implements IEmployeeService{
    @Autowired
    private EmployeeMapper employeeMapper;
    @Override
    public List<Employee> getAll() {
        return employeeMapper.getAll();
    }

    @Override
    public void insert(Employee employee) {
        employeeMapper.insert(employee);
    }

    @Override
    public void delete(Integer id) {
        employeeMapper.delete(id);
    }

    @Override
    public void update(Employee employee) {
        employeeMapper.update(employee);
    }

    @Override
    public void uppdate(Employee employee) {
        employeeMapper.uppdate(employee);
    }

    @Override
    public Employee getById(Integer id) {
        return employeeMapper.getById(id);
    }

    @Override
    public List<Employee> getByName(String name) {
        String name1 = "%"+name+"%";
        return employeeMapper.getByName(name1);
    }

    @Override
    public void addMultiple(List<Employee> employeeList) {
        employeeMapper.addMultiple(employeeList);
    }
}
