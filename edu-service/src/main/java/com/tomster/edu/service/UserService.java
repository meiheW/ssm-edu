package com.tomster.edu.service;

import com.tomster.edu.mapper.UserMapper;
import com.tomster.edu.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author meihewang
 * @date 2019/12/07  11:20
 */

@Service
@Transactional
public class UserService {

    @Autowired
    private UserMapper userMapper;


    public User findUserById(int id){
        return userMapper.findById(id);
    }

}
