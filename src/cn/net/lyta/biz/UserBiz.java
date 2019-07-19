package cn.net.lyta.biz;
import cn.net.lyta.entity.Message;
import cn.net.lyta.entity.User;

import java.util.List;

public interface UserBiz {
    public User login(String sn, String password);
    public User select(int id);
    public void update(User user);
    public void changePassword(User user);
    public void insert(User user);
    public void delete(int id);
    public List<User> selectAll();
}
