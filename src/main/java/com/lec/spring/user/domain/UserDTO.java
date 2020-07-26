package com.lec.spring.user.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
    private int u_uid;
    private String u_id;
    private String u_pw;
    private String u_name;
    private String u_jumin;
    private String u_email;
    private String u_phoneNum;
    private String u_auth;
    private String enabled;
}
