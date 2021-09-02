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
	
	public List<MenuDTO> mainMenuList(){
		statement = nameSpace + ".mainMenuList";
		return sqlSession.selectList(statement);
	}
	public List<MenuDTO> menuList(MenuDTO dto){
		statement = nameSpace + ".menuList";
		return sqlSession.selectList(statement,dto);
	}
	public String menuNo() {
		statement = nameSpace +".menuNo";
		return sqlSession.selectOne(statement);
	}
	public void menuWrite(MenuDTO dto) {
		statement = nameSpace + ".menuWrite";
		sqlSession.selectList(statement,dto);
	} 
	public MenuDTO menuDetail(String menuNo) {
		statement = nameSpace + ".menuDetail";
		return sqlSession.selectOne(statement,menuNo);
	}
	public void menuDel(String menuNo) {
		statement = nameSpace + ".menuDel";
		sqlSession.delete(statement,menuNo);
	}
	
	public int count() {
		statement = nameSpace +".count";
		return sqlSession.selectOne(statement);
	}
	
	public void menuModify(MenuDTO dto) {
		statement = nameSpace + ".menuModify";
		sqlSession.update(statement,dto);
	}
	
	public void menuReadUpdate(String menuNo)
	{
		statement=nameSpace+".menuCnt";
		sqlSession.update(statement,menuNo);
	}
	
}
