package com.lec.spring.user.persistence;

import com.lec.spring.user.domain.UserDTO;

public interface UserDAO {
    void register(UserDTO userDTO) throws Exception;
}
