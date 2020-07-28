package com.lec.spring.hire.beans;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface IWriteDAO {


	List<HWriteDTO> select();
	int insert(final HWriteDTO dto);
	//	public int insert(String name, String title, String salary,String position1, String position2, String part,String career, String degree, String workform,String upDate, String regDate);
    HWriteDTO selectByUid(final int uid);
	int update(int uid, @Param("a") HWriteDTO dto);
	int deleteByUid(final int uid);




}
