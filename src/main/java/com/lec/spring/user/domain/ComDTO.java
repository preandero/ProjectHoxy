package com.lec.spring.user.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ComDTO {
    private int c_uid;
    private String c_id;
    private String c_pw;
    private String c_name;
    private String c_ceoName;
    private String c_address1;
    private String c_address2;
    private String c_postNum;
    private String c_cnum;
    private String c_form;
    private int c_employees;
    private String c_category;
    private String c_auth;
    private String enabled;
}
