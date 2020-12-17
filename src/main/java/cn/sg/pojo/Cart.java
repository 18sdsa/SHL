package cn.sg.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart {
    private int id;
    private String infor;
    private String username;
    private String release_time;
}
