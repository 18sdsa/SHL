package cn.sg.service;

import cn.sg.dao.UserMapper;
import cn.sg.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


public class UserServiceImpl implements UserService {
    //业务层调dao

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int add(User user) {
        return userMapper.add(user);
    }

    public User select(String username) {
        return userMapper.select(username);
    }


}
