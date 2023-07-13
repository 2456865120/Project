package nuc.ss.service;

import nuc.ss.bean.Contract;
import nuc.ss.mapper.ContractMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ContractServiceImpl implements IContractService{
    @Autowired
    private ContractMapper contractMapper;

    @Override
    public List<Contract> getAll() {
        return contractMapper.getAll();
    }

    @Override
    public void add(Contract contract) {
        contractMapper.add(contract);
    }

    @Override
    public Contract getById(Integer id) {
        return contractMapper.getById(id);
    }

    @Override
    public void update(Contract contract) {
        contractMapper.update(contract);
    }

    @Override
    public void delete(Integer id) {
        contractMapper.delete(id);
    }

    @Override
    public Contract getPById(Integer id) {
        return contractMapper.getPById(id);
    }
}
