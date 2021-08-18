package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BoardCommentDTO;

public class BoardCommentRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.BoardCommentMapper";
	String statement; 
	
	
	
	public List<BoardCommentDTO> cmntList(String boardNo){
		statement=namespace+".cmntList";
		return sqlSession.selectList(statement,boardNo);
		
	}
}
