package nuc.ss.service;

import nuc.ss.bean.Contract;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IContractService {
    List<Contract> getAll();
    void add(Contract contract);
    Contract getById(Integer id);
    void update(Contract contract);
    void delete(Integer id);
    Contract getPById(Integer id);
}
