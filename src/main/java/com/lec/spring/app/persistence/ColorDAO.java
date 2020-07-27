package com.lec.spring.app.persistence;

import com.lec.spring.app.domain.AppDTO;
import com.lec.spring.app.domain.ColorDTO;

import java.util.List;

public interface ColorDAO {

    public List<ColorDTO> select();
    int update();

}
