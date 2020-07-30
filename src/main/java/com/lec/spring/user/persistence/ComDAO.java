package com.lec.spring.user.persistence;

import com.lec.spring.user.domain.ComDTO;
import com.lec.spring.user.domain.UserDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComDAO {
    int c_register(ComDTO dto) throws Exception;
    List<ComDTO> select_By_c_id(int c_uid);
    ComDTO loginCom(@Param("c_id")String c_id);
}
