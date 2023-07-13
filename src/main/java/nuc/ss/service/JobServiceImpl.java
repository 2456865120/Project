package nuc.ss.service;

import nuc.ss.bean.Job;
import nuc.ss.mapper.JobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class JobServiceImpl implements IJobService{
    @Autowired
    private JobMapper jobMapper;
    @Override
    public List<Job> getAll() {
        return jobMapper.getAll();
    }

    @Override
    public void insert(Job job) {
        jobMapper.insert(job);
    }

    @Override
    public void delete(Integer id) {
        jobMapper.delete(id);
    }

    @Override
    public void update(Job job) {
        jobMapper.update(job);
    }

    @Override
    public Job getById(Integer id) {
        return jobMapper.getById(id);
    }

    @Override
    public List<Job> getByName(String name) {
        String name1 = "%"+name+"%";
        return jobMapper.getByName(name1);
    }
}
