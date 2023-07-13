package nuc.ss.mapper;

import nuc.ss.bean.Address;
import nuc.ss.bean.EmployeeCount;
import nuc.ss.bean.SexCount;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StatisticsMapper {
    SexCount getSexCount(@Param("id") Integer id);
    Integer getRmployee(@Param("id")Integer id);
    List<Address> getAddress();
}
