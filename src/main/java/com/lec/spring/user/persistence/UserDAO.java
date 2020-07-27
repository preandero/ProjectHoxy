package com.lec.spring.user.persistence;

import com.lec.spring.user.domain.UserDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public interface UserDAO {

    int register(UserDTO userDTO) throws Exception;
    int checkOverId(String u_id);
    int GetKey(String u_id, String u_key);
    int alter_userKey(String u_id, String key);
}
