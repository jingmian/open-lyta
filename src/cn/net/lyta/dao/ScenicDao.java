package cn.net.lyta.dao;

import cn.net.lyta.entity.Scenic;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * FileName: ScenicDao.xml
 * Author:   Administrator-V
 * Date:     2019/4/12 18:53
 * Description: ${DESCRIPTION}
 */
@Repository("ScenicDao")
public interface ScenicDao {
    public List<Scenic> selectList();
    public Scenic selectById(int scenicId);
    public void insert(Scenic scenic);
    public void update(Scenic user);
    public void delete(int scenicId);
    public List<Scenic> selectAll();
}
