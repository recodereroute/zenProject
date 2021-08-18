package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuDTO;

public class MenuRepository {
	@Autowired
	SqlSession sqlSession;
	String nameSpace = "mappers.MenuMapper";
	String statement;
	
	//메뉴 리스트 불러오기
	public List<MenuDTO> menuList(MenuDTO dto){
		statement = nameSpace + ".menuList";
		return sqlSession.selectList(statement,dto);
	}
	//메뉴 번호
	public String menuNo() {
		statement = nameSpace +".menuNo";
		return sqlSession.selectOne(statement);
	}
	//메뉴 디테일
	public MenuDTO menuDetail(String menuNo) {
		statement = nameSpace + ".menuDetail";
		return sqlSession.selectOne(statement,menuNo);
	}
	//메뉴 작성
	public void menuWrite(MenuDTO dto) {
		statement = nameSpace + ".menuWrite";
		sqlSession.selectList(statement,dto);
	}
	public int count() {
		statement = nameSpace +".count";
		return sqlSession.selectOne(statement);
	}
}
