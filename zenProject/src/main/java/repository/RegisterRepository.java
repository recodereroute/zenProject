package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.MemberDTO;

public class RegisterRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.registerMapper";
	String statement;
	public AuthInfoDTO checkId(String userId) {
		statement = namespace + ".checkId";
		return sqlSession.selectOne(statement, userId);
	}
	public void memJoin(MemberDTO dto) {
		statement = namespace + ".memJoin";
		sqlSession.insert(statement, dto);
	}
}
