package nuc.ss.service;

import nuc.ss.bean.Traincontract;
import nuc.ss.mapper.TrainContractMapper;
import nuc.ss.service.ITrainContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TrainContractServiceImpl implements ITrainContractService {
    @Autowired
    private TrainContractMapper trainContractMapper;
    @Override
    public List<Traincontract> getAll() {
        return trainContractMapper.getAll();
    }
}
