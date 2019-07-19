package cn.net.lyta.tool;

import org.springframework.stereotype.Component;

import java.text.ParsePosition;
import java.util.Date;
import java.text.SimpleDateFormat;
/**
 *
 * @Author liyaowei
 * @date 2019/4/3
 *
 * */

public class Common {

    public static Date getNowDate() {
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);

        ParsePosition pos = new ParsePosition(8);

        Date currentTimeNew = formatter.parse(dateString, pos);

        return currentTimeNew;
    }
    /**
     * @return返回长时间格式 yyyy-MM-dd HH:mm:ss
     *
     * 获取当前时间
     */
    public static Date getSqlDate() {
        Date sqlDate = new java.sql.Date(System.currentTimeMillis());
        return sqlDate;
    }
}
