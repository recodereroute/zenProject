package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;

public class MemberRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.memberMapper";
	String statement;
	
	public MemberDTO memInfo(String memId) {
		statement = namespace + ".memInfo";
		return sqlSession.selectOne(statement, memId);
	}
}
