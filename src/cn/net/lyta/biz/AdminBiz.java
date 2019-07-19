package cn.net.lyta.biz;

import cn.net.lyta.entity.Admin;

/**
 * FileName: AdminBiz
 * Author:   Administrator-V
 * Date:     2019/4/7 20:07
 * Description: ${DESCRIPTION}
 */
public interface AdminBiz {
    public Admin adminLogin(String adminName, String password);
    public Admin qryAdminMessage(int id);
    public void updateAdminMessage(Admin user);
    public void changeAdminPassword(Admin admin);
    public void insertAdminMessage(Admin user);
}
