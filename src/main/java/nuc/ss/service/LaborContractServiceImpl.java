package nuc.ss.service;

import nuc.ss.bean.Laborcontract;
import nuc.ss.mapper.LaborContractMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class LaborContractServiceImpl implements ILaborContractService{
    @Autowired
    private LaborContractMapper laborContractMapper;

    @Override
    public List<Laborcontract> getAll() {
        return laborContractMapper.getAll();
    }
}
