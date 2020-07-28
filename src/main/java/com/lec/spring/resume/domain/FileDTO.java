package com.lec.spring.resume.domain;

public class FileDTO {

    private int rf_uid;
    private int r_uid;
    private String rf_source;


    public FileDTO() {
    }

    public FileDTO(int rf_uid, int r_uid, String rf_source) {
        this.rf_uid = rf_uid;
        this.r_uid = r_uid;
        this.rf_source = rf_source;
    }

    public int getRf_uid() {
        return rf_uid;
    }

    public void setRf_uid(int rf_uid) {
        this.rf_uid = rf_uid;
    }

    public int getR_uid() {
        return r_uid;
    }

    public void setR_uid(int r_uid) {
        this.r_uid = r_uid;
    }

    public String getRf_source() {
        return rf_source;
    }

    public void setRf_source(String rf_source) {
        this.rf_source = rf_source;
    }


}
