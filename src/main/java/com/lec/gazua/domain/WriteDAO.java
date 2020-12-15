package com.lec.gazua.domain;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface WriteDAO {

		List<WriteDTO> select();
		int insert(WriteDTO dto);
		int insert(String subject, String content, String nickName);
		List<WriteDTO> selectByUid(int por_uid);
		int update(WriteDTO dto);
		int update(int por_uid, @Param("a")WriteDTO dto); // dao.xml확인
		int deleteByUid(int por_uid);
		
		int incViewCnt(int por_uid);
		
		WriteDTO searchBySubject(String subject);
		
		
		
}
