package com.lec.spring.user.service;

import com.lec.spring.user.domain.UserDTO;

public interface UserService {
    void register(UserDTO userDTO) throws Exception;
}
