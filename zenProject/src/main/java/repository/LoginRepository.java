package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;

public class LoginRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.LoginMapper";
	String statement; 
	public AuthInfoDTO logIn(String userId) {
		statement = namespace +".logIn";
		return sqlSession.selectOne(statement, userId);
	}
}
