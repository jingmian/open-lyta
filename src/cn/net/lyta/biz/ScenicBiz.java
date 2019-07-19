package cn.net.lyta.biz;

import cn.net.lyta.entity.Scenic;

import java.util.List;

/**
 * FileName: ScenicBiz
 * @Author:   Administrator-V
 * Date:     2019/4/12 21:14
 * Description: ${DESCRIPTION}
 */
public interface ScenicBiz {
    public List<Scenic> selectScenicList();
    public Scenic select(int scenicId);
    public void insert(Scenic scenic);
    public void update(Scenic user);
    public void delete(int scenicId);
    public List<Scenic> selectAll();
}
