package com.lec.spring.user.persistence;

import com.lec.spring.user.domain.UserDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("UserDAO")
public class UserDAO {

    @Autowired
    private SqlSession session;

    public UserDAO(){
        System.out.println("dao 객체생성");
    }

    public void register(UserDTO userDTO){
        session.insert("UserDAO.register", userDTO);
    }
}
