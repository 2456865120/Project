package nuc.ss.mapper;


import nuc.ss.bean.Status_inf;
import nuc.ss.bean.User_inf;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface UserMapper {
    User_inf login(@Param("name") String loginName, @Param("password") String password);
    User_inf check_Register_loginname(@Param("loginname")String loginname);
    User_inf check_Register_username(@Param("username")String username);
    User_inf check_Register_email(@Param("email")String email);
    void regist(User_inf user_inf);
    User_inf queryByLoginnameAndEmail(@Param("loginname") String loginname, @Param("email") String email);
    void setPassword(@Param("password") String password,@Param("loginname") String loginname);
    List<User_inf> getAll();
    List<User_inf> getAllByName(@Param("name") String name);
    void insert(User_inf user_inf);
    User_inf getById(@Param("id")Integer id);
    void update(User_inf user_inf);
    void uppdate(User_inf user_inf);
    void delete(@Param("id") Integer id);
}
