package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuDTO;

public class SearchRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.SearchMapper";
	String statement;
	
	public int count() {
		statement = namespace + ".count";
		return sqlSession.selectOne(statement);
	}
	public List<MenuDTO> menuSearch(String searchCon){
		statement = namespace + ".menuSearch";
		return sqlSession.selectList(statement, searchCon);
	}
}
