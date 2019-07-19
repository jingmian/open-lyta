package cn.net.lyta.biz;
import cn.net.lyta.entity.Message;
import cn.net.lyta.tool.Pager;

import java.util.List;

public interface MessageBiz {

    public int insert(Message ms);
    public Message select(int id);
    public List<Message> selectAll();
    public void update(Message ms);
    public void delete(int id);
    public List<Message> getAll(int user_id, Pager page);

}
