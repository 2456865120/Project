package nuc.ss.mapper;

import nuc.ss.bean.UserVisit;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserVisitMapper {
    public void addUserVisit(UserVisit userVisit);
    void updateExitTimeById(@Param("id")Integer id,@Param("exitTime") String exitTime);
    List<UserVisit> queryAll();
    List<UserVisit> queryByIp(@Param("ip") String ip);
    void deleter(@Param("id") Integer id);
}
