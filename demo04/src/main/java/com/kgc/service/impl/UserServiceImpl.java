package com.kgc.service.impl;

import com.kgc.mapper.UserMapper;
import com.kgc.pojo.User;
import com.kgc.pojo.UserExample;
import com.kgc.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 张康硕
 * @create 2020-09-24 9:37
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    UserMapper userMapper;
    @Override
    public User selectByName(String name) {
        User user=null;
        UserExample example=new UserExample();
        UserExample.Criteria criteria=example.createCriteria();
        criteria.andNameEqualTo(name);
        List<User> users=userMapper.selectByExample(example);
        if (users!=null&&users.size()>0){
            user=users.get(0);
        }
        return user;
    }
}
