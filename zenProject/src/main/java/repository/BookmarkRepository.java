package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BookmarkDTO;
import command.BookmarkCommend;

public class BookmarkRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.BookmarkMapper";
	String statement; 
	public void bookmarkAdd(BookmarkDTO dto) {
		statement = namespace + ".bookmarkAdd";
		sqlSession.insert(statement, dto);
	}

	public void bookmarkDelete(BookmarkDTO dto) {
		statement = namespace + ".bookmarkDelete";
		sqlSession.delete(statement,dto);
	}
	public List<BookmarkCommend> bookmarkList(String memId) {
		statement = namespace + ".bookmarkList";
		return sqlSession.selectList(statement,memId);
	}
}