package nuc.ss.service;

import nuc.ss.bean.UserVisit;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserVisitService {
    public void addUserVisit(UserVisit userVisit);
    void updateExitTimeById(Integer id,  String exitTime);
    List<UserVisit> queryAll();
    List<UserVisit> queryByIp(String ip);
    void deleter( Integer id);
}
