package cn.net.lyta.biz.impl;


import cn.net.lyta.biz.MessageBiz;
import cn.net.lyta.dao.MessageDao;
import cn.net.lyta.entity.Message;
import cn.net.lyta.tool.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("MessageBiz")
public class MessageBizmpl implements MessageBiz {

    @Autowired
    public MessageDao messageDao;

    @Override
    public int insert(Message message) {

        return messageDao.insert( message);
    }

    @Override
    public Message select(int id) {

        return messageDao.select(id);
    }

    @Override
    public List<Message> selectAll(){

        return  messageDao.selectAll();
    }

    @Override
    public void update(Message message) {

        messageDao.update(message);
    }

    @Override
    public void  delete(int id)
    {

        messageDao.delete(id);
    }

    @Override
    public List<Message> getAll(int user_id, Pager pager){

          return messageDao.searchMessage(user_id,pager);
    }
}
