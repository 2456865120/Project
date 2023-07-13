package nuc.ss.service;


import nuc.ss.bean.Status_inf;
import nuc.ss.bean.User_inf;
import nuc.ss.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public User_inf login(String loginName, String password) {
       return userMapper.login(loginName,password);
    }

    @Override
    public User_inf check_Register_loginname(String loginname) {
        return userMapper.check_Register_loginname(loginname);
    }

    @Override
    public User_inf check_Register_username(String username) {
        return userMapper.check_Register_username(username);
    }

    @Override
    public User_inf check_Register_email(String email) {
        return userMapper.check_Register_email(email);
    }

    @Override
    public void regist(User_inf user_inf) {
        userMapper.regist(user_inf);
    }

    @Override
    public User_inf queryByLoginnameAndEmail(String loginname, String email) {
        return userMapper.queryByLoginnameAndEmail(loginname,email);
    }

    @Override
    public void setPassword(String password, String loginname) {
        userMapper.setPassword(password,loginname);
    }

    @Override
    public List<User_inf> getAll() {
        return userMapper.getAll();
    }

    @Override
    public List<User_inf> getAllByName(String name) {
        String name1= "%" + name +"%";
        return userMapper.getAllByName(name1);
    }

    @Override
    public User_inf getById(Integer id) {
        return userMapper.getById(id);
    }

    @Override
    public void update(User_inf user_inf) {
        userMapper.update(user_inf);
    }

    @Override
    public void uppdate(User_inf user_inf) {
        userMapper.uppdate(user_inf);
    }

    @Override
    public void delete(Integer id) {
        userMapper.delete(id);
    }
}
