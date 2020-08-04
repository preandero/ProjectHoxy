package com.lec.spring.hire.beans;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface IWriteDAO {


	List<HWriteDTO> select();
	List<HWriteDTO> adminselect();
	int insert(final HWriteDTO dto);
	HWriteDTO selectByUid(final int h_uid);
	int update(int h_uid, @Param("a") HWriteDTO dto);
	int deleteByUid(final int h_uid);
	int incViewCnt(int h_uid); // 조회수 증가



}
