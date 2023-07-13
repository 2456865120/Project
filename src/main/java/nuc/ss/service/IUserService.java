package nuc.ss.service;


import nuc.ss.bean.Status_inf;
import nuc.ss.bean.User_inf;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface IUserService {
    User_inf login(String loginName, String password);
    User_inf check_Register_loginname(String loginname);
    User_inf check_Register_username(String username);
    User_inf check_Register_email(String email);
    void regist(User_inf user_inf);
    User_inf queryByLoginnameAndEmail(String loginname, String email);
    void setPassword(String password,String loginname);
    List<User_inf> getAll();
    List<User_inf> getAllByName(String name);
    User_inf getById(Integer id);
    void update(User_inf user_inf);
    void uppdate(User_inf user_inf);
    void delete(@Param("id") Integer id);
}
