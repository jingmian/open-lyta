package cn.net.lyta.biz.impl;

import cn.net.lyta.biz.UserBiz;
import cn.net.lyta.dao.UserDao;
import cn.net.lyta.entity.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserBiz")
public class UserBizmpl implements UserBiz {

    private final Log logger = LogFactory.getLog(getClass());
    @Autowired
    public UserDao userDao;

    @Override
    public User login(String username, String password) {
        User user = userDao.selectByUsername(username);
        if(user!=null && user.getPassword().equals(password)){
            return  user;
        }
        System.out.println(password);
        System.out.println("123");
        return null;
    }

    @Override
    public void changePassword(User user) {

        userDao.update(user);
    }

    @Override
    public User select(int id) {

        return userDao.select(id);
    }

    @Override
    public  void update(User user){
        this.logger.info("user has update");
        userDao.update(user);
    }

    @Override
    public void insert(User user){
        this.logger.info("user inserd");
        userDao.insert(user);
    }

    @Override
    public void delete(int id){
        userDao.delete(id);
    }

    @Override
    public List<User> selectAll() {
        return userDao.selectAll();
    }
}
