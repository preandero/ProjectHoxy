package com.lec.spring.app.persistence;

import com.lec.spring.app.domain.AppDTO;
import com.lec.spring.hire.beans.HWriteDTO;
import com.lec.spring.user.domain.ComDTO;

import java.util.List;

public interface AppDAO {
    int insert(final AppDTO dto);
    public List<AppDTO> selectAByUid(final int uid,final int param2, final int param3, final int param4, final String param5);
    public List<AppDTO> selectAByCid1(final int uid, final int param3, final int param4, final String param5);
    public List<AppDTO> selectAByCid2(final int uid,final int param2, final int param3, final int param4, final String param5);
    public List<AppDTO> selectByhid(final int hid);
    public List<AppDTO> selectRByUid(final int uid);
    public List<AppDTO> genderCount1(final int hid);
    public List<AppDTO> genderCount2(final int hid);

    public List<AppDTO> age(final int hid);
    public int age20(final int hid);
    public int age30(final int hid);
    public int age40(final int hid);
    public int age50(final int hid);
    public int age60(final int hid);

    public List<AppDTO> toeic(final int hid);
    public int toeic500(final int hid);
    public int toeic600(final int hid);
    public int toeic700(final int hid);
    public int toeic800(final int hid);
    public int toeic900(final int hid);

    //경력
    public List<AppDTO> career(final int hid);
    public int career0(final int hid);
    public int career1(final int hid);
    public int career3(final int hid);
    public int career5(final int hid);
    public int career10(final int hid);

    public List<HWriteDTO> selectHByCid(final int c_uid);



    int deleteByAid(final int aid);
    int updateByAid(final int aid,final int rid);
    int updateByAid2(final int aid);

    int selectAppList(final AppDTO dto);

    public ComDTO companyInfo(final int hid);

}

