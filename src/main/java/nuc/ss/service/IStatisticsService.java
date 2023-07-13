package nuc.ss.service;

import nuc.ss.bean.Address;
import nuc.ss.bean.SexCount;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IStatisticsService {
    SexCount getSexCount(Integer id);
    Integer getRmployee(Integer id);
    List<Address> getAddress();
}
