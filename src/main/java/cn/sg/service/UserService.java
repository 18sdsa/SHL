package cn.sg.service;

import cn.sg.pojo.User;

public interface UserService {
    //注册(add)
    int add(User user);

    //查询
    User select(String username);
}
