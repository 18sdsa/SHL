package cn.sg.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    private int id;
    private String infor;//商品信息
    private int price;
    private String username;//买家
}
