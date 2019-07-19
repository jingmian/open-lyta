package cn.net.lyta.biz.impl;

import cn.net.lyta.biz.ScenicBiz;
import cn.net.lyta.dao.ScenicDao;
import cn.net.lyta.entity.Scenic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * FileName: ScenicBizmpl
 * @Author:   Administrator-V
 * Date:     2019/4/12 21:20
 * Description: ${DESCRIPTION}
 */
@Service("ScenicBizmpl")
public class ScenicBizmpl implements ScenicBiz {

    @Autowired
    Scenic scenic;
    @Autowired
    ScenicDao scenicDao;

    @Override
    public List<Scenic> selectScenicList(){
        List<Scenic> scenicList = scenicDao.selectList();
        return scenicList;
    }

    @Override
    public Scenic select(int scenicId){
        scenic = scenicDao.selectById(scenicId);
        return scenic;
    }

    @Override
    public void insert(Scenic scenic){

        scenicDao.insert(scenic);
    }

    @Override
    public void update(Scenic user){
        scenicDao.update(user);
    }

    @Override
    public void delete(int scenicId){
        scenicDao.delete(scenicId);
    }

    @Override
    public List<Scenic> selectAll(){
        List<Scenic> scenicAllList = scenicDao.selectAll();
        return scenicAllList;
    }

}
