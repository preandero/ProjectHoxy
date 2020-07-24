package com.lec.spring.app.persistence;

import com.lec.spring.app.domain.AppDTO;

import java.util.List;

public interface AppDAO {
    int insert(final AppDTO dto);
    public List<AppDTO> selectByUid(final int uid);
    public List<AppDTO> selectByHid(final int hid);
    
    
    public List<AppDTO> selectRByUid(final int uid);

}

