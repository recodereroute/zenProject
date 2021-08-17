package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.NoticeDTO;

public class NoticeRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.noticeMapper";
	String statement;
	public void noticeWrite(NoticeDTO dto) {
		statement = namespace + ".noticeWrite";
		sqlSession.insert(statement, dto);
	}
	public List<NoticeDTO> noticeList(){
		statement = namespace + ".noticeList";
		return sqlSession.selectList(statement);
	}
	public String noticeNo() {
		statement = namespace + ".noticeNo";
		return sqlSession.selectOne(statement);
	}
	public void noticeCount(String noticeNo) {
		statement = namespace + ".noticeCount";
		sqlSession.update(statement, noticeNo);
	}
	public NoticeDTO noticeDetail(String noticeNo) {
		statement = namespace + ".noticeDetail";
		return sqlSession.selectOne(statement, noticeNo);
	}
}
