package com.tomster.edu.mapper;

import com.tomster.edu.model.User;
import org.apache.ibatis.annotations.Param;

/**
 * @author meihewang
 * @date 2019/12/07  12:06
 */
public interface UserMapper {

    public User findById(@Param("id") int id);
}
