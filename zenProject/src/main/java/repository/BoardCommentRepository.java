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
	public String bcmntNo(BoardCommentDTO dto) {
		statement = namespace + ".bcmntNo";
		return sqlSession.selectOne(statement, dto);
	}
	public void bcmntWrite(BoardCommentDTO dto) {
		statement = namespace + ".bcmntWrite";
		sqlSession.insert(statement, dto);
	}
	public void bcmntDelete(BoardCommentDTO dto) {
		statement = namespace + ".bcmntDelete";
		sqlSession.delete(statement, dto);
	}
	public void bcmntModify(BoardCommentDTO dto) {
		statement = namespace + ".bcmntModify";
		sqlSession.update(statement,dto);
	}
}
