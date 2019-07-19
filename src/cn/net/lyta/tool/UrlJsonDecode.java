package cn.net.lyta.tool;

import java.util.ArrayList;
import java.util.List;

/**
 * FileName: UrlJsonDecode
 * Author:   Administrator-V
 * Date:     2019/4/8 3:57
 * Description: ${DESCRIPTION}
 */



public class UrlJsonDecode {
    public static final byte TRIM = 32;

    public static void main(String[] args) {
        System.out.println(decodeUnicode("%20%20%20%20%E8%83%9C%E5%A4%9A%E8%B4%9F%E5%B0%91%20%E6%96%B9%E6%B3%95%E5%A3%AB%E5%A4%A7%E5%A4%AB%20%E7%9A%84%E8%AF%B4%E6%B3%95%E6%98%AF%E5%8F%91%E5%A3%AB%E5%A4%A7%E5%A4%AB%20fsdfsdf"));
    }

    /**
     * Byte list转byte数组
     * @param bytes
     * @return
     */
    public static byte[] byteListToArray(List<Byte> bytes){
        if(bytes==null||bytes.size()==0){
            return null;
        }
        byte[] bys = new byte[bytes.size()];
        for(int i = 0; i < bytes.size(); i++){
            bys[i] = bytes.get(i).byteValue();
        }
        return bys;
    }


    /**
     * 合并集合
     * @param list1
     * @param list2
     * @param <T>
     * @return
     */
    public static <T> T[] mergeList(T[] list1,T[] list2){
        if(list1==null||list2==null||list1.length==0||list2.length==0){
            if(list1 != null || list1.length != 0){
                return list1;
            }
            if(list2 != null || list2.length != 0){
                return list2;
            }
        }
        T[] list = (T[])new Object[list1.length+list2.length];
        int k = 0;
        for(int i = 0; i < list1.length; i++){
            list[k] = list1[i];
            k++;
        }
        for(int i = 0; i < list2.length; i++){
            list[k] = list2[i];
            k++;
        }
        return list;
    }


    /**
     * 判断是不是数字
     * @param str
     * @return
     */
    public static boolean isNumber(String str){
        if(str==null){
            return false;
        }
        char[] chars = str.toCharArray();
        if(str.length()==0){
            return false;
        }
        boolean isHave = false;
        int i = 0;
        if(chars[0]=='-'||chars[0]=='+'){
            i++;
        }
        for(; i < chars.length; i++){
            if(chars[i]<48||chars[i]>58){
                if(chars[i] == '.'){
                    if(i==0||i==chars.length-1||isHave==true){
                        return false;
                    }else {
                        isHave = true;
                    }
                }else {
                    return false;
                }
            }
        }
        return true;
    }


    /**
     *判断字符串中有没有空格
     * @param str
     * @return
     */
    public static boolean stringNotHaveTrim(String str){
        if(str==null){
            return false;
        }
        byte[] bytes = str.getBytes();
        if(bytes.length==0){
            return false;
        }
        for(int i = 0; i < bytes.length; i++){
            if(bytes[i]== TRIM){
                return false;
            }
        }
        return true;

    }

    /**
     * 去掉空格
     * @param str
     * @return
     */
    public static String stringTrim(String str){
        if(str == null){
            return str;
        }
        byte[] bytes = str.getBytes();
        if(bytes.length==0){
            return null;
        }
        List list = new ArrayList();
        for(int i = 0; i < bytes.length; i++){
            if(bytes[i]!= TRIM){
                list.add(bytes[i]);
            }
        }
        bytes = new byte[list.size()];
        for(int i = 0; i < list.size(); i++){
            bytes[i] = (byte) list.get(i);
        }
        if(bytes.length==0){
            return null;
        }else {
            return new String(bytes);
        }
    }


    /**
     * unicode转码
     * @param dataStr
     * @return
     */
    public static String decodeUnicode(String dataStr) {

        StringBuffer buffer = new StringBuffer();
        char[] unicodeChar = new char[]{'\\', 'u'};
        char[] ch = dataStr.toCharArray();
        for (int i = 0; i < ch.length; i++) {
            if (ch[i] == unicodeChar[0]) {
                if (i + 4 < ch.length) {
                    if (ch[++i] == unicodeChar[1]) {
                        //i++;
                        String str = "";
                        for (int j = 0; j < 4; j++) {
                            i++;
                            str += ch[i];
                        }
                        char letter = (char) Integer.parseInt(str, 16);
                        // 16进制parse整形字符串。
                        buffer.append(letter);
                    }
                }
            }else if(ch[i]=='%'){
                if(i+3==ch.length){
                    buffer.append(ch[i]);
                    i++;
                }else {
                    List<String> strings = new ArrayList<>();
                    String str = "";
                    for(int j = 0; j < 2; j++){
                        i++;
                        str += ch[i];
                    }
                    str = str.toUpperCase();
                    strings.add(str);
                    i++;
                    while (i+2<ch.length&&ch[i]=='%'){
                        str = new String("");
                        for(int j = 0; j < 2; j++){
                            i++;
                            str += ch[i];
                        }
                        str = str.toUpperCase();
                        strings.add(str);
                        i++;
                    }
                    i--;
                    byte[] by = new byte[strings.size()];
                    for(int j = 0; j < strings.size(); j++){
                        by[j] = (byte)Integer.parseInt(strings.get(j),16);
                    }
                    try {
                        buffer.append(new String(by,"utf-8"));
                    }catch (Exception e){
                        e.printStackTrace();
                        buffer.append(new String(by));
                    }

                }
            }else {
                buffer.append(ch[i]);
            }
        }
        return buffer.toString();
    }

}