package com.lec.auth;


public class SnsValue implements SnsUrls{
    private String service;
    private String clientId;
    private String clientSecret;
    private String redirectUrl;

    public SnsValue(String service, String cid, String cs, String rurl) {
        this.service = service;
        this.clientId = cid;
        this.clientSecret = cs;
        this.redirectUrl = rurl;
    }
}
