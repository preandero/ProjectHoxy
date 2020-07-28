package com.lec.spring.app.persistence;

import com.lec.spring.app.domain.AppDTO;

import java.util.List;

public interface AppDAO {
    int insert(final AppDTO dto);
    List<AppDTO> selectAByUid(final int uid);
    List<AppDTO> selectByhid(final int hid);
    List<AppDTO> selectRByUid(final int uid);
    List<AppDTO> genderCount1(final int hid);
    List<AppDTO> genderCount2(final int hid);

    int age20(final int hid);
    int age30(final int hid);
    int age40(final int hid);
    int age50(final int hid);
    int age60(final int hid);

    int toeic500(final int hid);
    int toeic600(final int hid);
    int toeic700(final int hid);
    int toeic800(final int hid);
    int toeic900(final int hid);

    //경력
    int career0(final int hid);
    int career1(final int hid);
    int career3(final int hid);
    int career5(final int hid);
    int career10(final int hid);




    int deleteByAid(final int aid);
    int updateByAid(final int aid,final int rid);



}

