package repository;

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
	public String bmkmenuNo(BookmarkDTO dto) {
		
		statement = namespace + ".bmkmenuNo";
		return sqlSession.selectOne(statement, dto);
	}
	
}
