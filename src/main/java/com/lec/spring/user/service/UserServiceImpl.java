package com.lec.spring.user.service;

import com.lec.spring.user.domain.UserDTO;

import com.lec.spring.user.persistence.UserDAO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class UserServiceImpl implements UserService {
    private final UserDAO userDAO;
    @Inject
    public UserServiceImpl(UserDAO userDAO){
        this.userDAO = userDAO;
    }

    @Override
    public void register(UserDTO userDTO) throws Exception {
        userDAO.register(userDTO);
    }
}
