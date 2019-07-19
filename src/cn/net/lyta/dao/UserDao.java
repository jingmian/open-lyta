package cn.net.lyta.dao;
import cn.net.lyta.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * FileName: UserDao
 * @Author:   Administrator-V
 * Date:     2019/4/6 16:32
 * Description: ${DESCRIPTION}
 */
@Repository("UserDao")
public interface UserDao {
    public int insert(User user);
    public void update(User user);
    public void delete(int id);
    public User select(int id);
    public User selectByCreateSn(String username);
    public User selectByUsername(@Param("username") String username);
    public List<User> selectAll();
}