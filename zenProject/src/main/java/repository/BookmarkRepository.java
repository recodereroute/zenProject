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
	public void boomarkAdd(BookmarkDTO dto) {
		statement = namespace + ".boomarkAdd";
		sqlSession.insert(statement, dto);
	}
	public List<BookmarkDTO>  bookmarkList(String menuNo){
		statement = namespace + ".bookmarkList";
		return sqlSession.selectList(statement, menuNo);
	}
	
}