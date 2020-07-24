package com.lec.spring.user.persistence;

import com.lec.spring.user.domain.UserDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class UserDAOImpl implements UserDAO{

    private static final String NAMESPACE = "mapper/user-Mapper";

    private SqlSession sqlSession;

    @Inject
    public UserDAOImpl(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    @Override
    public void register(UserDTO userDTO) throws Exception {
        sqlSession.insert(NAMESPACE + ".register", userDTO);
    }
}
