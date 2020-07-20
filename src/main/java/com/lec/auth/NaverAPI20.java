//package com.lec.auth;
//
//import com.github.scribejava.core.builder.api.DefaultApi20;
//
//public class NaverAPI20 extends DefaultApi20 implements SnsUrls {
//   private NaverAPI20(){}
//
//    @Override
//    public String getAccessTokenEndpoint() {
//        return NAVER_ACCESS_TOKEN;
//    }
//
//    @Override
//    protected String getAuthorizationBaseUrl() {
//        return NAVER_AUTH;
//    }
//
//    private static class InsatanceHolder{
//       private static final NaverAPI20 INSTANCE = new NaverAPI20();
//   }
//   public static NaverAPI20 getInstance(){
//       return InsatanceHolder.INSTANCE;
//   }
//
//}
