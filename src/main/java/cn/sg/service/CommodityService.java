package cn.sg.service;

import cn.sg.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface CommodityService {
    //查询所有书籍
    List<Books> selectAllBook();

    //显示所有衣服
    List<Clothes> selectAllClothes();

    //卖书
    int sellBook(int id);

    //通过bookName卖书
    int sellBookByName(String name);

    //显示还有多少本书
    int Count(int id);

    //通过bookName显示还有多少本书
    int CountByName(String bookName);

    //通过id查book
    Books selectBookById(int id);

    //将用户买的书存入订单表中
    int addOrder(String info, int price, String username);

    //通过username查询所有订单
    List<Order> selectAllOrder(String username);

    //将用户选择的书存入购物车
    int addCart(@Param("info") String info, @Param("username") String username, @Param("release_time") String release_time);

    //通过username查询用户的订单
    List<Cart> selectAllCart(String username);

    //用于在购物车购买时删除购物车的记录
    int deleteCart(int id);

    //卖废纸壳
    int addZK(@Param("seller_name") String seller_name, @Param("seller_number") String seller_number,@Param("kinds") String kinds);

    //查询平台所有订单
    List<ZK> selectZK();
}
