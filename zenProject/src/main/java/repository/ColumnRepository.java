package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.NoticeDTO;

public class ColumnRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.ColumnMapper";
	String statement;
	public NoticeDTO columnOne() {
		statement= namespace+".columnOne";
		return sqlSession.selectOne(statement);
	}
	public void columnWrite(NoticeDTO dto) {
		statement= namespace+".columnWrite";
		sqlSession.insert(statement,dto);
	}
	
	public List<NoticeDTO> columnList(NoticeDTO dto){
		statement = namespace + ".columnList";
		return sqlSession.selectList(statement,dto);
	}
	public void columnReadUpdate(String noticeNo){
		statement=namespace+".columnCount";
		sqlSession.update(statement,noticeNo);
	}
	public NoticeDTO columnDetail(String noticeNo) {
		statement=namespace+".columnDetail";
		return sqlSession.selectOne(statement,noticeNo);
	}
	public void columnModify(NoticeDTO dto){
		statement=namespace+".columnModify";
		sqlSession.update(statement,dto);
	}	
	public void columnDel(String noticeNo) {
		statement = namespace +".columnDel";
		sqlSession.delete(statement, noticeNo);
	}
	public int count() {
		statement = namespace + ".count";
		return sqlSession.selectOne(statement);
	}
}
