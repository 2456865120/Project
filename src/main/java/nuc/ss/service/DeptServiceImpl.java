package nuc.ss.service;

import nuc.ss.bean.Dept;
import nuc.ss.mapper.DeptMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DeptServiceImpl implements IDeptService{
    @Autowired
    private DeptMapper deptMapper;
    @Override
    public List<Dept> getAll() {
        return deptMapper.getAll();
    }

    @Override
    public List<Dept> getByName(String name) {
        String name1 = "%"+name+"%";
        return deptMapper.getByName(name1);
    }

    @Override
    public void insert(Dept dept) {
        deptMapper.insert(dept);
    }

    @Override
    public void update(Dept dept) {
        deptMapper.update(dept);
    }

    @Override
    public void delete(Integer id) {
        deptMapper.delete(id);
    }

    @Override
    public Dept getById(Integer id) {
        return deptMapper.getById(id);
    }
}
