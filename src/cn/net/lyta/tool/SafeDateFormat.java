package cn.net.lyta.tool;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * FileName: SafeDateFormat
 * Author:   Administrator-V
 * Date:     2019/4/7 11:51
 * Description: ${DESCRIPTION}
 */


public class SafeDateFormat {
    public static Date init(String dateData) {

        Date date = SimpleHelp.convert(dateData);

        return date;
    }
}



class SimpleHelp {

    private static final ThreadLocal<DateFormat> DATE_FORMATE = new ThreadLocal<DateFormat>() {
        @Override
        protected DateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd");
        }
    };

    public static Date convert(String source) {
        try {
            Thread.sleep(10);
            return DATE_FORMATE.get().parse(source);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
