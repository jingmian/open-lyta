package cn.net.lyta.dao;

import cn.net.lyta.entity.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * FileName: AdminDao
 * @Author:   Administrator-V
 * Date:     2019/4/7 20:12
 * Description: ${DESCRIPTION}
 */

@Repository("AdminDao")
public interface AdminDao {

    public void insert(Admin admin);
    public void update(Admin admin);
    public Admin selectById(int id);
    public void deleteById(int id);
    public Admin selectByName(@Param("adminName") String adminName);
    public void deleteByName(@Param("adminName") String adminName);
}
