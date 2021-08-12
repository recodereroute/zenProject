package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeesDTO;

public class EmployeeRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace  = "mappers.EmployeeMapper";
	String statement; 
	public String empNo() {
		statement = namespace +".empNo";
		return sqlSession.selectOne(statement);
	}
	public void empJoin(EmployeesDTO dto) {
		statement = namespace + ".empJoin";
		sqlSession.insert(statement, dto);
	}
}