package com.lec.spring.resume.persistence;


import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface resumeDAO {
   public int filesave(final int uid, final String source);
   public int deleteFile(final int uid);
}
