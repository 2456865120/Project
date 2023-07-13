package nuc.ss.service;

import nuc.ss.bean.Salary;
import nuc.ss.mapper.SalaryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SalaryServiceImpl implements ISalaryService{

    @Autowired
    private SalaryMapper salaryMapper;
    @Override
    public List<Salary> getAll() {
        return salaryMapper.getAll();
    }

    @Override
    public void insert(Salary salary) {
        salaryMapper.insert(salary);
    }

    @Override
    public void update(Salary salary) {
        salaryMapper.update(salary);
    }

    @Override
    public Salary getBtId(Integer id) {
        return salaryMapper.getBtId(id);
    }
}
