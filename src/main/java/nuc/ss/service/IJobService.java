package nuc.ss.service;

import nuc.ss.bean.Job;

import java.util.List;

public interface IJobService {
    List<Job> getAll();
    void insert(Job job);
    void delete(Integer id);
    void update(Job job);
    Job getById(Integer id);
    List<Job> getByName(String name);
}
