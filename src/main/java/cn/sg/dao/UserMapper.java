package cn.sg.dao;

import cn.sg.pojo.Books;
import cn.sg.pojo.User;

public interface UserMapper {
    //注册(add)
    int add(User user);

    //查询
    User select(String username);



}
