package nuc.ss.service;

import nuc.ss.bean.Status_inf;
import nuc.ss.mapper.StatusMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StatusServiceImpl implements IStatusService{
    @Autowired
    private StatusMapper statusMapper;
    @Override
    public List<Status_inf> getAll() {
        return statusMapper.getAll();
    }


}
