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
	
	public int count(String searchCon) {
		statement = namespace + ".count";
		return sqlSession.selectOne(statement, searchCon);
	}
	public List<MenuDTO> menuSearch(MenuDTO dto){
		statement = namespace + ".menuSearch";
		return sqlSession.selectList(statement, dto);
	}
	public List<MenuDTO> selectSearch(String menuItem){
		statement = namespace + ".selectSearch";
		return sqlSession.selectList(statement, menuItem);
	}
}
