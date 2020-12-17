package cn.sg.service;

import cn.sg.dao.CommodityMapper;
import cn.sg.pojo.*;

import java.util.List;

public class CommodityServiceImpl implements CommodityService{

    private CommodityMapper commodityMapper;

    public void setCommodityMapper(CommodityMapper commodityMapper) {
        this.commodityMapper = commodityMapper;
    }

    //查询所有书籍
    public List<Books> selectAllBook() {
        return commodityMapper.selectAllBook();
    }

    //查询所有衣服
    public List<Clothes> selectAllClothes() {
        return commodityMapper.selectAllClothes();
    }

    public int sellBook(int id) {
            return commodityMapper.sellBook(id);
    }

    public int sellBookByName(String name) {
        return commodityMapper.sellBookByName(name);
    }

    public int Count(int id) {
        return commodityMapper.Count(id);
    }

    public int CountByName(String bookName) {
        return commodityMapper.CountByName(bookName);
    }

    public Books selectBookById(int id) {
        return commodityMapper.selectBookById(id);
    }

    public int addOrder(String info, int price, String username) {
        commodityMapper.addOrder(info,price,username);
        return 0;
    }

    public List<Order> selectAllOrder(String username) {
        return commodityMapper.selectAllOrder(username);
    }

    public int addCart(String info, String username, String release_time) {
        return commodityMapper.addCart(info,username,release_time);
    }

    public List<Cart> selectAllCart(String username) {
        return commodityMapper.selectAllCart(username);
    }

    public int deleteCart(int id) {
        return commodityMapper.deleteCart(id);
    }

    public int addZK(String seller_name, String seller_number,String kinds) {
        return commodityMapper.addZK(seller_name,seller_number,kinds);
    }

    public List<ZK> selectZK() {
        return commodityMapper.selectZK();
    }
}
