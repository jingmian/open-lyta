package cn.net.lyta.tool;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;


/**
 * FileName: IsMobile
 * Author:   Administrator-V
 * Date:     2019/4/6 16:20
 * Description: 验证手机号合法性正则表达式工具类
 * 中国电信号段
 *        133,149,153,173,177,180,181,189,199
 *    中国联通号段
 *        130,131,132,145,155,156,166,175,176,185,186
 *    中国移动号段
 *        134(0-8),135,136,137,138,139,147,150,151,152,157,158,159,178,182,183,184,187,188,198
 *    其他号段
 *        14号段以前为上网卡专属号段，如中国联通的是145，中国移动的是147等等。
 *        虚拟运营商
 *            电信：1700,1701,1702
 *            移动：1703,1705,1706
 *            联通：1704,1707,1708,1709,171
 *        卫星通信：148(移动) 1349
 */

public class IsMobile {

    public static boolean isMobile(String str) {
        Pattern p = null;
        Matcher m = null;
        boolean b = false;
        String s2="^[1](([3][0-9])|([4][5,7,9])|([5][4,6,9])|([6][6])|([7][3,5,6,7,8])|([8][0-9])|([9][8,9]))[0-9]{8}$";
        // 验证手机号
        if(StringUtils.isNotBlank(str)){
            p = Pattern.compile(s2);
            m = p.matcher(str);
            b = m.matches();
        }
        return b;
    }

}
