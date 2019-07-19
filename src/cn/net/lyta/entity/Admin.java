package cn.net.lyta.entity;

import org.springframework.stereotype.Component;

/**
 * FileName: Admin
 * Author:   Administrator-V
 * Date:     2019/4/7 17:44
 * Description: 管理员实体类
 */

@Component("Admin")
public class Admin {
    private Integer id;
    private String adminName;
    private String password;
    private String email;

    public Integer getId() {
        return id;
    }

    public String getAdminName() {
        return adminName;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", adminName='" + adminName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                '}';
    }


}
