package cn.sg.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ZK {
    private int zk_id;
    private String seller_name;
    private int seller_number;
    private String kinds;
}
