package nuc.ss.service;

import nuc.ss.bean.Confidentialitycontract;
import nuc.ss.mapper.ConfidentialityContractMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ConfidentialityContractServiceImpl implements IConfidentialityContractService{
    @Autowired
    private ConfidentialityContractMapper confidentialityContractMapper;
    @Override
    public List<Confidentialitycontract> getAll() {
        return confidentialityContractMapper.getAll();
    }
}
