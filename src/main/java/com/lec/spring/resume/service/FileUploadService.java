package com.lec.spring.resume.service;

import com.lec.spring.resume.persistence.resumeDAO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class FileUploadService {

    @Autowired
    private SqlSession sqlsession;

    private resumeDAO dao;

    public void fileUpload(Model model, String File){

       dao =  sqlsession.getMapper(resumeDAO.class);

        dao.deletefile((Integer)model.getAttribute("uid"));
        dao.filesave((Integer) model.getAttribute("uid"),File);


    }




}
