package com.lec.gazua.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageService {
	
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public MyPageService() {
		super();
		System.out.println("MyPageService() 생성");
	}
//	// uid 로 회원 정보 출력
//	public List<CustomerDTO> selectByUid(int cus_uid) {
//		
//	}
	
	
}
