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
	//번호
	public int count() {
		statement = nameSpace +".count";
		return sqlSession.selectOne(statement);
	}
}
