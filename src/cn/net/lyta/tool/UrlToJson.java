package cn.net.lyta.tool;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Component;
/**
 * FileName: UrlToJson
 * Author:   Administrator-V
 * Date:     2019/4/8 4:18
 * Description: ${DESCRIPTION}
 */

public class UrlToJson {
    public static String go(String paramStr){
        //String paramStr = "a=a1&b=b1&c=c1";
        String[] params = paramStr.split("&");
        JSONObject obj = new JSONObject();
        for (int i = 0; i < params.length; i++) {
            String[] param = params[i].split("=");
            if (param.length >= 2) {
                String key = param[0];
                String value = param[1];
                for (int j = 2; j < param.length; j++) {
                    value += "=" + param[j];
                }
                try {
                    obj.put(key,value);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return obj.toString();
    }

}
