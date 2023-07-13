package nuc.ss.service;

import nuc.ss.bean.Checkwork;
import nuc.ss.bean.Employee;
import nuc.ss.mapper.CheckworkMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CheckworkServiceImpl implements ICheckworkService{
    @Autowired
    private CheckworkMapper checkworkMapper;
    @Override
    public List<Checkwork> getAll() {
        return checkworkMapper.getAll();
    }

    @Override
    public Employee getByName(String name) {
        return checkworkMapper.getByName(name);
    }

    @Override
    public void insert(Checkwork checkwork) {
        checkworkMapper.insert(checkwork);
    }

    @Override
    public void update(Checkwork checkwork) {
        checkworkMapper.update(checkwork);
    }


    @Override
    public void delete(Integer id) {
        checkworkMapper.delete(id);
    }

    @Override
    public Checkwork getById(Integer id) {
        return checkworkMapper.getById(id);
    }

    @Override
    public Checkwork getPById(Integer id) {
        return checkworkMapper.getPById(id);
    }
}
