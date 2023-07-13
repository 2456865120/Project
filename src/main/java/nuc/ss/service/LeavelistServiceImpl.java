package nuc.ss.service;

import nuc.ss.bean.Leave;
import nuc.ss.bean.LeaveStatus;
import nuc.ss.bean.LeaveType;
import nuc.ss.mapper.LeavelistMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class LeavelistServiceImpl implements ILeavelistService{
    @Autowired
    private LeavelistMapper leavelistMapper;
    @Override
    public List<Leave> AdminGetAll() {
        return leavelistMapper.AdminGetAll();
    }

    @Override
    public Leave getById(Integer id) {
        return leavelistMapper.getById(id);
    }

    @Override
    public List<LeaveType> getAllType() {
        return leavelistMapper.getAllType();
    }

    @Override
    public List<LeaveStatus> getAllStatus() {
        return leavelistMapper.getAllStatus();
    }

    @Override
    public void update(Leave leave) {
        leavelistMapper.update(leave);
    }

    @Override
    public void delete(Integer id) {
        leavelistMapper.delete(id);
    }

    @Override
    public void add(Leave leave) {
        leavelistMapper.add(leave);
    }
}
