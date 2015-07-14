package com.util.luxj.mylibrary;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Luxj on 2015/7/13.
 */
public class Test {

    public static int getNum() {
        return 1000;
    }

    public static String refFormatNowDate() {
        Date nowTime = new Date(System.currentTimeMillis());
        SimpleDateFormat sdFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String retStrFormatNowDate = sdFormatter.format(nowTime);
        return retStrFormatNowDate;
    }
}
