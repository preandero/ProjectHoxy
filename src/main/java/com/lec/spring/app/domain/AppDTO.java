package com.lec.spring.app.domain;

import com.lec.spring.hire.beans.HWriteDTO;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
@NoArgsConstructor
public class AppDTO {

    //회사명, 공고 이름, 지원일, 열람여부, 마감여부, 이력서 번호 ,이력서타이틀
    private int a_uid;
    private Timestamp a_date;
    private Timestamp r_date;
    private int a_view;
    private int u_uid;
    private int h_uid;
    private int r_uid;

    private String r_title;//이력서 제목
    private String h_title;//공고 타이틀

    private String h_name;
    private int dday;
    private String h_part;




    public AppDTO(int u_uid, int h_uid, int r_uid) {
        this.u_uid = u_uid;
        this.h_uid = h_uid;
        this.r_uid = r_uid;
    }


}
