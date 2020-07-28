package com.lec.spring.resume.persistence;

public interface resumeDAO {
    int filesave(final int uid, final String source);
    int deletefile(final int uid);
}
