package com.lec.gazua.domain;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface CustomerDAO {
	
	// 정호
	// 회원 정보 cus_uid 로 출력
	public List<CustomerDTO> selectByUid(int cus_uid);
	// 회원 작성 글, 댓글, 스크랩 글 보기 (전체 글 개수, 페이징)
	// TODO
	// 회원 로그인 기록보기 
	// TODO 
}
