package com.lec.gazua.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lec.gazua.domain.WriteDAO;
import com.lec.gazua.domain.WriteDTO;

@Service
public class BoardService {

	WriteDAO dao;
	
	// MyBatis
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public BoardService() {
		super();
		System.out.println("BoardService() 생성");
	}

	public List<WriteDTO> list() {
		dao = sqlSession.getMapper(WriteDAO.class);  // MyBatis 사용
		return dao.select();
	}

	public int write(WriteDTO dto) {
		dao = sqlSession.getMapper(WriteDAO.class);
		int result = dao.insert(dto);
		//return dao.insert(dto.getSubject(), dto.getContent(), dto.getName());
		
		System.out.println("생성된 uid 는 " + dto.getPor_uid());
		
		
		return result;
	}

	public List<WriteDTO> viewByUid(int por_uid) {
		System.out.println("이게 문제인가 ser"+por_uid);
		dao = sqlSession.getMapper(WriteDAO.class); // MyBatis 사용
		dao.incViewCnt(por_uid);
		return dao.selectByUid(por_uid);
	}

	public List<WriteDTO> selectByUid(int por_uid) {
		dao = sqlSession.getMapper(WriteDAO.class); // MyBatis 사용
		return dao.selectByUid(por_uid);  // 1개짜리 List
	}

	public int update(WriteDTO dto) {
		dao = sqlSession.getMapper(WriteDAO.class); // MyBatis 사용
		return dao.update(dto.getPor_uid(), dto);
	}

	public int deleteByUid(int por_uid) {
		dao = sqlSession.getMapper(WriteDAO.class); // MyBatis 사용
		return dao.deleteByUid(por_uid);
	}
	
	//
	
	
}




