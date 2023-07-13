package nuc.ss.service;

import nuc.ss.bean.Business;
import nuc.ss.mapper.BusinessMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusinessServiceImpl implements IBusinessService{
    @Autowired
    private BusinessMapper businessMapper;
    @Override
    public List<Business> getAll() {
        return businessMapper.getAll();
    }
}
