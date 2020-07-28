package com.lec.spring.resume.persistence;

public interface resumeDAO {
    public int filesave(final int uid,final String source);
    public int deletefile(final int uid);
}
