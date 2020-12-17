package cn.sg.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NowTime {
    public static String getNowTime() {
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd HH:mm:ss");//可以方便地修改日期格式
        String now_time = dateFormat.format( now );
        return now_time;
    }



}
