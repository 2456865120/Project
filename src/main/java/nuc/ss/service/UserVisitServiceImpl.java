package nuc.ss.service;

import nuc.ss.bean.UserVisit;
import nuc.ss.mapper.UserVisitMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserVisitServiceImpl implements IUserVisitService{
    @Autowired
    private UserVisitMapper userVisitMapper;

    @Override
    public void addUserVisit(UserVisit userVisit) {
        userVisitMapper.addUserVisit(userVisit);

    }

    @Override
    public void updateExitTimeById(Integer id, String exitTime) {
        userVisitMapper.updateExitTimeById(id,exitTime);
    }

    @Override
    public List<UserVisit> queryAll() {
        return userVisitMapper.queryAll();
    }

    @Override
    public List<UserVisit> queryByIp(String ip) {
        return userVisitMapper.queryByIp(ip);
    }

    @Override
    public void deleter(Integer id) {
        userVisitMapper.deleter(id);
    }
}
