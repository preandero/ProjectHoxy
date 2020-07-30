package com.lec.spring.user.persistence;

import com.lec.spring.user.domain.ComDTO;

import java.util.List;

public interface ComDAO {
    int c_register(ComDTO dto) throws Exception;
    List<ComDTO> select_By_c_id(int c_uid);
}
