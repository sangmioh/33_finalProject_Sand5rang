package com.s5.sand5rang.sangmi.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.sangmi.vo.Enroll;
import com.s5.sand5rang.sangmi.vo.Inquery;
import com.s5.sand5rang.sein.vo.Store;

@Repository
public class SangmiDao {
	
	//---------관리자----------------
	//게시글 총 갯수 조회
	public int selectListCount1(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("sangmiMapper.selectListCount1");
	}
	
	
	//가맹점 전체리스트 조회
   public ArrayList<Store> storeList(SqlSessionTemplate sqlSession,PageInfo pi) {
	   
	   int limit = pi.getBoardLimit();
	   int offset = (pi.getCurrentPage() -1)*limit;
	   
	   RowBounds rowBounds = new RowBounds(offset, limit);
	 
	   return (ArrayList)sqlSession.selectList("sangmiMapper.storeList",null,rowBounds);
   }
   //폐업
    public int storeclose(SqlSessionTemplate sqlSession, int enrNo) {
    	
    	return sqlSession.update("sangmiMapper.storeclose", enrNo);
    }
  //게시글 총 갯수 조회
  	public int selectListCount3(SqlSessionTemplate sqlSession) {
  		
  		return sqlSession.selectOne("sangmiMapper.selectListCount3");
  	} 
   
   
 //가맹 가입신청 리스트 조회
   public ArrayList<Enroll> storeEnrollList(SqlSessionTemplate sqlSession,PageInfo pi) {
	   
	   int limit = pi.getBoardLimit();
	   int offset = (pi.getCurrentPage() -1)*limit;
	   
	   RowBounds rowBounds = new RowBounds(offset, limit);
	   
	   return (ArrayList)sqlSession.selectList("sangmiMapper.storeEnrollList",null,rowBounds);   
	   
   }
 //가맹가입신청 상세페이지
   public Enroll selectEnroll(SqlSessionTemplate sqlSession, int enrNo){
	   
	   return sqlSession.selectOne("sangmiMapper.selectEnroll",enrNo);
   }
  
   //가맹가입 폼
   public int insertStore(SqlSessionTemplate sqlSession, Store s) {
	   
	   return sqlSession.insert("sangmiMapper.insertStore",s);
   }
  //가맹가입 상태 변화
   public int updateEnroll(SqlSessionTemplate sqlSession, Enroll e) {
	   
	   return sqlSession.update("sangmiMapper.updateEnroll",e);
   }
   
   
   //가맹 이름 체크
   public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		
		return sqlSession.selectOne("sangmiMapper.idCheck", checkId);
	}

 
   
 //가맹 가입 반려 변화
   public int referStore(SqlSessionTemplate sqlSession, Enroll e) {
	   
	   return sqlSession.update("sangmiMapper.referStore",e);
   }
   
   
	//---------가맹주----------------
   //게시글 총 갯수 조회
 	public int selectListCount2(SqlSessionTemplate sqlSession, String storeId) {
 		
 		return sqlSession.selectOne("sangmiMapper.selectListCount2",storeId);
 	}
 	
 	
   
   
   //문의 전체 리스트 조회
	public ArrayList<Inquery> inqueryList(SqlSessionTemplate sqlSession,PageInfo pi,String storeId) {
		   
		   int limit = pi.getBoardLimit();
		   int offset = (pi.getCurrentPage() -1)*limit;
		   
		   RowBounds rowBounds = new RowBounds(offset, limit);
		 
		   return (ArrayList)sqlSession.selectList("sangmiMapper.inqueryList",storeId,rowBounds);
	   }
	//게시글 작성하기 select
	public String selectInsert(SqlSessionTemplate sqlSession, Inquery i) {
		
		return sqlSession.selectOne("sangmiMapper.selectInsert",i);
		
	}
	
	
   //문의 글 작성하기
	public int inquertInsert(SqlSessionTemplate sqlSession, Inquery i) {
		
		return sqlSession.insert("sangmiMapper.inqueryInsert",i);
	}

  //문의 글 상세조회
   public Inquery selectInquery(SqlSessionTemplate sqlSession, int inqNo) {
	   
	   return sqlSession.selectOne("sangmiMapper.selectInquery", inqNo);
   }

  //문의글 수정
  public int inupdate(SqlSessionTemplate sqlSession, Inquery i ) {
	  
	  return sqlSession.update("sangmiMapper.inupdate",i);
  }

 
  

}