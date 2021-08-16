package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;

public class MemberRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.memberMapper";
	String statement;
	
	public List<MemberDTO> memList(){
		statement = namespace + ".memList";
		return sqlSession.selectList(statement);
	}
	
	public void memPwUpdate(MemberDTO dto) {
		statement = namespace +".memPwUpdate";
		sqlSession.update(statement, dto);
	}
	public void memEdit(MemberDTO dto) {
		statement = namespace + ".memEdit";
		sqlSession.update(statement, dto);
	}
	
	public MemberDTO memInfo(String memId) {
		statement = namespace + ".memInfo";
		return sqlSession.selectOne(statement, memId);
	}
	public void memOut(String memId) {
		statement = namespace + ".memOut";
		sqlSession.delete(statement, memId);
	}
	public String idFind(MemberDTO dto) {
		statement = namespace + ".idFind";
		return sqlSession.selectOne(statement, dto);
	}
	public int count() {
		statement = namespace + ".count";
		return sqlSession.selectOne(statement);
	}
}
