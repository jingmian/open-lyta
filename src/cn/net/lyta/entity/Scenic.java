package cn.net.lyta.entity;

import org.springframework.stereotype.Component;

/**
 * FileName: Scenic
 * @Author:   Administrator-V
 * Date:     2019/4/12 18:43
 * Description: ${DESCRIPTION}
 */
@Component("Scenic")
public class Scenic {
    public int scenicId;
    public String scenicType;
    public String rank;
    public String scenicName;
    public String scenicImgPath;
    public String scenicContent;
    public String price;
    public String openTime;
    public String scenicAddress;

    public int getScenicId() {
        return scenicId;
    }

    public String getScenicType() {
        return scenicType;
    }

    public String getRank() {
        return rank;
    }

    public String getScenicName() {
        return scenicName;
    }

    public String getScenicImgPath() {
        return scenicImgPath;
    }

    public String getScenicContent() {
        return scenicContent;
    }

    public String getPrice() {
        return price;
    }

    public String getOpenTime() {
        return openTime;
    }

    public String getScenicAddress() {
        return scenicAddress;
    }

    public void setScenicId(int scenicId) {
        this.scenicId = scenicId;
    }

    public void setScenicType(String scenicType) {
        this.scenicType = scenicType;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public void setScenicName(String scenicName) {
        this.scenicName = scenicName;
    }

    public void setScenicImgPath(String scenicImgPath) {
        this.scenicImgPath = scenicImgPath;
    }

    public void setScenicContent(String scenicContent) {
        this.scenicContent = scenicContent;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setOpenTime(String openTime) {
        this.openTime = openTime;
    }

    public void setScenicAddress(String scenicAddress) {
        this.scenicAddress = scenicAddress;
    }

    @Override
    public String toString() {
        return "Scenic{" +
                "scenicId=" + scenicId +
                ", scenicType='" + scenicType + '\'' +
                ", rank='" + rank + '\'' +
                ", scenicName='" + scenicName + '\'' +
                ", scenicImgPath='" + scenicImgPath + '\'' +
                ", scenicContent='" + scenicContent + '\'' +
                ", price='" + price + '\'' +
                ", openTime='" + openTime + '\'' +
                ", scenicAddress='" + scenicAddress + '\'' +
                '}';
    }
}
