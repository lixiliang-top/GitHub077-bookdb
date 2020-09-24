package com.kgc.service;

import com.kgc.pojo.User;

/**
 * @author 张康硕
 * @create 2020-09-24 9:36
 */
public interface UserService {
    User selectByName(String name);
}
