package nuc.ss.service;

import nuc.ss.bean.Dept;

import java.util.List;

public interface IDeptService {
    public List<Dept> getAll();
    List<Dept> getByName(String name);
    void insert(Dept dept);
    void update(Dept dept);
    void delete(Integer id);
    Dept getById(Integer id);
}
