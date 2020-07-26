package com.lec.spring.user.service;

import com.lec.spring.user.domain.UserDTO;

import com.lec.spring.user.persistence.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public UserServiceImpl(){
        System.out.println("serviceImpl 객체생성");
    }

    @Override
    public void register(UserDTO userDTO) throws Exception {
        userDAO.register(userDTO);
    }
}
