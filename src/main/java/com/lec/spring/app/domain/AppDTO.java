package com.lec.spring.app.domain;

import com.lec.spring.hire.beans.HWriteDTO;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.security.Timestamp;
@Getter
@Setter
@NoArgsConstructor
public class AppDTO {

    private int a_uid;
    private Timestamp a_date;
    private int a_view;
    private int u_uid;
    private int h_uid;
    private int r_uid;

   private String r_title;//이력서 제목



   /* public AppDTO() {
    }*/

    public AppDTO(int u_uid, int h_uid, int r_uid) {
        this.u_uid = u_uid;
        this.h_uid = h_uid;
        this.r_uid = r_uid;
    }


    /*public int getA_uid() {
        return a_uid;
    }

    public void setA_uid(int a_uid) {
        this.a_uid = a_uid;
    }

    public Timestamp getA_date() {
        return a_date;
    }

    public void setA_date(Timestamp a_date) {
        this.a_date = a_date;
    }

    public int getA_view() {
        return a_view;
    }

    public void setA_view(int a_view) {
        this.a_view = a_view;
    }

    public int getU_uid() {
        return u_uid;
    }

    public void setU_uid(int u_uid) {
        this.u_uid = u_uid;
    }

    public int getH_uid() {
        return h_uid;
    }

    public void setH_uid(int h_uid) {
        this.h_uid = h_uid;
    }

    public int getR_uid() {
        return r_uid;
    }

    public void setR_uid(int r_uid) {
        this.r_uid = r_uid;
    }*/
}
