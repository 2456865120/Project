package nuc.ss.service;

import nuc.ss.bean.Address;
import nuc.ss.bean.SexCount;
import nuc.ss.mapper.StatisticsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class StatisticsServiceImpl implements IStatisticsService{
    @Autowired
    private StatisticsMapper statisticsMapper;
    @Override
    public SexCount getSexCount(Integer id) {
        return statisticsMapper.getSexCount(id);
    }

    @Override
    public Integer getRmployee(Integer id) {
        return statisticsMapper.getRmployee(id);
    }

    @Override
    public List<Address> getAddress() {
        return statisticsMapper.getAddress();
    }
}
