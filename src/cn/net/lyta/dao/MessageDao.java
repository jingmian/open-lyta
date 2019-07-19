package cn.net.lyta.dao;
import cn.net.lyta.entity.Message;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;
import cn.net.lyta.tool.Pager;

/**
 * FileName: MessageDao
 * @Author:   Administrator-V
 * Date:     2019/4/6 23:58
 * Description: ${DESCRIPTION}
 */
@Repository("MessageDao")
public interface MessageDao {
    public int insert(Message message);
    public void update(Message message);
    public void delete(int id);
    public Message select(int id);
    public List<Message> selectAll();
    public List<Message> searchMessage(@Param("user_id") int user_id, @Param("pager") Pager pager);
    public int count(@Param("user_id") int user_id);
}
