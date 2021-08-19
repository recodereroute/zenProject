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
	
	//硫붾돱 由ъ뒪�듃 遺덈윭�삤湲�
	public List<MenuDTO> menuList(MenuDTO dto){
		statement = nameSpace + ".menuList";
		return sqlSession.selectList(statement,dto);
	}
	//硫붾돱 踰덊샇
	public String menuNo() {
		statement = nameSpace +".menuNo";
		return sqlSession.selectOne(statement);
	}
	//硫붾돱 �옉�꽦
	public void menuWrite(MenuDTO dto) {
		statement = nameSpace + ".menuWrite";
		sqlSession.selectList(statement,dto);
	} 
	//硫붾돱 �뵒�뀒�씪
	public MenuDTO menuDetail(String menuNo) {
		statement = nameSpace + ".menuDetail";
		return sqlSession.selectOne(statement,menuNo);
	}
	//硫붾돱 �궘�젣
	public void menuDel(String menuNo) {
		statement = nameSpace + ".menuDel";
		sqlSession.delete(statement,menuNo);
	}
	//硫붾돱 �닔�젙
	
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
