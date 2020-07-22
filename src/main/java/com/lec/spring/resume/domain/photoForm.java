package com.lec.spring.resume.domain;

import org.springframework.web.multipart.MultipartFile;

public class photoForm  {
    private String rf_file;
    private int rf_uid;
    private MultipartFile rf_source;


    public photoForm() {
    }

    public photoForm(String rf_file, int rf_uid, MultipartFile rf_source) {
        this.rf_file = rf_file;
        this.rf_uid = rf_uid;
        this.rf_source = rf_source;
    }


    public String getRf_file() {
        return rf_file;
    }

    public void setRf_file(String rf_file) {
        this.rf_file = rf_file;
    }

    public int getRf_uid() {
        return rf_uid;
    }

    public void setRf_uid(int rf_uid) {
        this.rf_uid = rf_uid;
    }

    public MultipartFile getRf_source() {
        return rf_source;
    }

    public void setRf_source(MultipartFile rf_source) {
        this.rf_source = rf_source;
    }
}
