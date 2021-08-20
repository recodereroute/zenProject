package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MenuCommentDTO;

public class MenuCommentRepository {

	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.MenuCommentMapper";
	String statement; 
	
	public String mcmntNo(MenuCommentDTO dto) {
		statement=namespace+".mcmntNo";
		return sqlSession.selectOne(statement,dto);
	}
	public void mcmntWrite(MenuCommentDTO dto) {
		statement = namespace + ".mcmntWrite";
		sqlSession.insert(statement, dto);
	}
	public List<MenuCommentDTO> mcmntList(String menuNo){
		statement=namespace+".mcmntList";
		return sqlSession.selectList(statement,menuNo);
	}
	public void mcmntDelete(MenuCommentDTO dto) {
		statement = namespace + ".mcmntDelete";
		sqlSession.delete(statement, dto);
	}
	public MenuCommentDTO mncntInfo(MenuCommentDTO dto) {
		statement = namespace + ".mncntInfo";
		return sqlSession.selectOne(statement, dto);
	}
}
