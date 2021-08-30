package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BoardDTO;
import Model.NoticeDTO;


public class BoardRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.BoardMapper";
	String statement; 
	public void boardDel(String boardNo) {
		statement=namespace+".boardDel";
		sqlSession.delete(statement,boardNo);
	}
	public void boardWrite(BoardDTO dto) {
		statement=namespace+".boardWrite";
		sqlSession.insert(statement,dto);
	}
	public List<BoardDTO> boardList(BoardDTO dto){
		statement=namespace+".boardList";
		return sqlSession.selectList(statement,dto);
	}
	public void boardReadUpdate(String boardNo)
	{
		statement=namespace+".boardCnt";
		sqlSession.update(statement,boardNo);
	}
	public BoardDTO boardDetail(String boardNo) {
		statement=namespace+".boardDetail";
		return sqlSession.selectOne(statement,boardNo);
	}
	public void boardModify(BoardDTO dto){
		statement=namespace+".boardModify";
		sqlSession.update(statement,dto);
	}
	public int count() {
		statement = namespace +".count";
		return sqlSession.selectOne(statement);
	}
	public NoticeDTO noticeOne() {
		statement=namespace+".noticeOne";
		return sqlSession.selectOne(statement);
	}
}
