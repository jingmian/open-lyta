/*
 * GOSN
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.net.lyta.tool;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.codec.binary.Base64;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import org.springframework.stereotype.Component;

/**
 *toJson的相关方法
 *
 */
@Component
public class GsonTools {

    /**
     * 获取GSON转换模式，默认日期格式为“yyyy-MM-dd HH:mm:ss”
     * @return
     */
    public static Gson getGson() {
        GsonBuilder builder = new GsonBuilder();
        /**
         * 不转换没有 @Expose 注解的字段
         * builder.excludeFieldsWithoutExposeAnnotation();
         * 为某特定对象设置固定的序列或反序列方式，自定义Adapter需实现JsonSerializer或者JsonDeserializer接口
         */
        builder.registerTypeAdapter(Timestamp.class, new TimestampTypeAdapter()).setDateFormat("yyyy-MM-dd HH:mm:ss").create();
        builder.registerTypeHierarchyAdapter(byte[].class, new ByteArrayTypeAdapter()).create();
        Gson gson = builder.create();
        return gson;
    }

    /**
     * 获取GSON转换模式，设置时间格式为dataFat
     * @param dataFat 时间格式
     * @return
     */
    public static Gson getGson(String dataFat) {
        GsonBuilder builder = new GsonBuilder();
        // 不转换没有 @Expose 注解的字段
        builder.excludeFieldsWithoutExposeAnnotation();
        builder.registerTypeAdapter(Timestamp.class, new TimestampTypeAdapter()).setDateFormat(dataFat).create();
        builder.registerTypeHierarchyAdapter(byte[].class, new ByteArrayTypeAdapter()).create();
        Gson gson = builder.create();
        return gson;
    }
}

/**
 * json包含日期类型的时候的处理方法
 *
 */

class TimestampTypeAdapter implements JsonSerializer<Timestamp>, JsonDeserializer<Timestamp> {

    private final DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Override
    public JsonElement serialize(Timestamp src, Type arg1, JsonSerializationContext arg2) {
        String dateFormatAsString = format.format(new Date(src.getTime()));
        return new JsonPrimitive(dateFormatAsString);
    }

    @Override
    public Timestamp deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        if (!(json instanceof JsonPrimitive)) {
            throw new JsonParseException("The date should be a string value");
        }

        try {
            Date date = format.parse(json.getAsString());
            return new Timestamp(date.getTime());
        } catch (ParseException e) {
            throw new JsonParseException(e);
        }
    }
}


class ByteArrayTypeAdapter implements JsonSerializer<byte[]>, JsonDeserializer<byte[]> {

    @Override
    public JsonElement serialize(byte[] src, Type typeOfSrc, JsonSerializationContext context) {
        Base64 encode = new Base64();
        byte[] base64 = encode.encode(src);
        return new JsonPrimitive(new String(base64));
    }

    @Override
    public byte[] deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        if (!(json instanceof JsonPrimitive)) {
            throw new JsonParseException("The date should be a string value");
        }
        Base64 decode = new Base64();
        byte[] base64 = decode.decode(json.getAsString());
        return base64;
    }
}