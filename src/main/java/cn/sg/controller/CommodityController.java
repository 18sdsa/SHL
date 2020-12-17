package cn.sg.controller;

import cn.sg.pojo.Books;
import cn.sg.pojo.Cart;
import cn.sg.pojo.Clothes;
import cn.sg.pojo.Order;
import cn.sg.service.CommodityService;
import cn.sg.utils.NowTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    //controller层调service层
    @Autowired
    @Qualifier("CommodityServiceImpl")
    private CommodityService commodityService;

    //返回主页
    @RequestMapping("/tomain")
    public String tomain(){
        return "main";
    }
    @RequestMapping("/toAllBook")
    public String selectAllBook(Model model){
        List<Books> books = commodityService.selectAllBook();
        model.addAttribute("books",books);
        return "books";
    }


    @RequestMapping("/toAllClothes")
    public String selectAllClothes(Model model){
        List<Clothes> clothes = commodityService.selectAllClothes();
        model.addAttribute("clothes",clothes);
        return "clothes";
    }


    @RequestMapping("/SellOneBook")
    public String SellBook(int id, HttpSession session){
        String name = (String) session.getAttribute("user");
        Books book = commodityService.selectBookById(id);//用户买的书
        System.out.println(id);
        System.out.println(book);
        int count = commodityService.Count(id);
        if(count!=0){
            commodityService.addOrder(book.getBookName(),book.getPrice(),name);
            commodityService.sellBook(id);
            return "redirect:/commodity/toAllBook";
        }

        return "out";
    }


    //跳转到个人订单页面
    @RequestMapping("/toOrder")
    public String toOrder(Model model,HttpSession session){
        String user = (String) session.getAttribute("user");
        List<Order> list = commodityService.selectAllOrder(user);
        model.addAttribute("orders",list);
        return "order";
    }

    //加入购物车
//    @RequestMapping("/addCart")
//    public String addCart(int id,HttpSession session){
//        String  user = (String) session.getAttribute("user");
//        Books book = commodityService.selectBookById(id);
//        commodityService.addCart(book.getBookName(),user);
//        return "redirect:/commodity/toAllBook";
//    }


    //购买购物车里的东西并删除购物车里的东西
    @RequestMapping("/buyCart")
    public String buyCart(int id,String bookName,int price,HttpSession session){
        String user = (String) session.getAttribute("user");
        int i = commodityService.CountByName(bookName);
        if(i!=0){
            commodityService.addOrder(bookName,price,user);
            commodityService.sellBookByName(bookName);
            commodityService.deleteCart(id);
            return "redirect:/commodity/toCart";
        }
        return "out";
    }

    //删除购物车里的订单
    @RequestMapping("/deleteBuyCart")
    public String deleteBuyCart(int id) {
        commodityService.deleteCart(id);
        return "redirect:/commodity/toCart";
    }

    //跳转到填写纸壳信息页
    @RequestMapping("toZK")
    public String toZK(HttpSession session) {
        String user = (String) session.getAttribute("user");
        if (user == null || user == "") {
            return "redirect:/user/toLogin";
        }
        else {
            return "zk";
        }

    }

    //卖家发布回收的信息
    @RequestMapping("/release_zk")
    public String ReleaseZK(HttpServletRequest request, HttpSession session) {

//        Date now = new Date();
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd HH:mm:ss");//可以方便地修改日期格式
//        String hehe = dateFormat.format( now );

        String nowTime = NowTime.getNowTime();//调用工具类获取用户下单的时间


        String seller_number = request.getParameter("seller_number");
        String user_name = (String) session.getAttribute("user");
        System.out.println(user_name);
        String zk = request.getParameter("zhonglei");//用户选择要回收哪种东西
        System.out.println(zk);
        commodityService.addZK(user_name,seller_number,zk);
        //同时加入用户个人发布闲置记录
        commodityService.addCart(zk,user_name,nowTime);

        return "redirect:/index.jsp";
    }

    //跳转到个人发布闲置页面
    @RequestMapping("/toCart")
    public String toCart(Model model, HttpSession session){
        String user = (String) session.getAttribute("user");
        List<Cart> carts = commodityService.selectAllCart(user);
        model.addAttribute("carts",carts);
        return "cart";
    }
}
