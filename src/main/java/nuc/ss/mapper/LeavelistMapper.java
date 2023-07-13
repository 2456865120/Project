package nuc.ss.mapper;

import nuc.ss.bean.Leave;
import nuc.ss.bean.LeaveStatus;
import nuc.ss.bean.LeaveType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LeavelistMapper {
    List<Leave> AdminGetAll();
    Leave getById(@Param("id") Integer id);
    List<LeaveType> getAllType();
    List<LeaveStatus> getAllStatus();
    void update(Leave leave);
    void delete(Integer id);
    void add(Leave leave);
}
