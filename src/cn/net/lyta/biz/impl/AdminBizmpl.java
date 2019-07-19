package cn.net.lyta.biz.impl;

import cn.net.lyta.biz.AdminBiz;
import cn.net.lyta.dao.AdminDao;
import cn.net.lyta.entity.Admin;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * FileName: AdminBizmpl
 * Author:   Administrator-V
 * Date:     2019/4/7 20:10
 * Description: ${DESCRIPTION}
 */
@Service("AdminBiz")
public class AdminBizmpl implements AdminBiz {

    private final Log logger = LogFactory.getLog(getClass());
    @Autowired
    public AdminDao adminDao;

    @Override
    public Admin adminLogin(String adminName,String password){
        this.logger.info("adminName"+adminName);
        this.logger.info("password"+password);
        Admin admin = adminDao.selectByName(adminName);
        this.logger.info(admin);
        if(adminName!= null && admin.getPassword().equals(password)){
            return admin;
        }else{
            return null;
        }
    }

    @Override
    public Admin qryAdminMessage(int id){

        return adminDao.selectById(id);
    }

    @Override
    public void updateAdminMessage(Admin admin){

        adminDao.update(admin);
    }

    @Override
    public void changeAdminPassword(Admin admin){

        adminDao.update(admin);
    }

    @Override
    public void insertAdminMessage(Admin admin){

        adminDao.insert(admin);
    }

}
