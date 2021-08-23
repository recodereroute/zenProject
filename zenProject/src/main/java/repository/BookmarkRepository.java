package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BookmarkDTO;

public class BookmarkRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.BookmarkMapper";
	String statement; 
	public void bookmarkAdd(BookmarkDTO dto) {
		statement = namespace + ".bookmarkAdd";
		sqlSession.insert(statement, dto);
	}
	public List<BookmarkDTO> bookmarkList(String memId){
		statement = namespace + ".bookmarkList";
		return sqlSession.selectList(statement, memId);
	}
	public void bookmarkDelete(BookmarkDTO dto) {
		statement = namespace + ".bookmarkDelete";
		sqlSession.delete(statement,dto);
	}
	public List<String> getMemName(String memId) {
		statement = namespace + ".getMemName";
		return sqlSession.selectList(statement,memId);
	}
}