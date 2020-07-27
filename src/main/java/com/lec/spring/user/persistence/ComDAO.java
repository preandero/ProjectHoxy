package com.lec.spring.user.persistence;

import com.lec.spring.user.domain.ComDTO;

public interface ComDAO {
    int c_register(ComDTO dto) throws Exception;
}
