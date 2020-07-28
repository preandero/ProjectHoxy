package com.lec.spring.app.persistence;

import com.lec.spring.app.domain.AppDTO;

import java.util.List;

public interface AppDAO {
    int insert(final AppDTO dto);
    public List<AppDTO> selectAByUid(final int uid);
    public List<AppDTO> selectRByUid(final int uid);

    int deleteByAid(final int aid);
    int updateByAid(final int aid,final int rid);



}

