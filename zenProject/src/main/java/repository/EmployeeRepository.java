package repository;

import java.util.List;

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
	public EmployeesDTO empInfo(String empNo) {
		statement = namespace + ".empInfo";
		return sqlSession.selectOne(statement, empNo);
	}
	public void empOut(String empNo) {
		statement = namespace + ".empOut";
		sqlSession.delete(statement,empNo);
	}
	public void empModify(EmployeesDTO dto) {
		statement = namespace + ".empModify";
		sqlSession.update(statement, dto);
	}
	public void empListEdit(EmployeesDTO dto) {
		statement = namespace + ".empListEdit";
		sqlSession.update(statement, dto);
	}
	public void empDelete(String empNo) {
		statement = namespace + ".empDelete";
		sqlSession.delete(statement, empNo);
	}
	public void empPwUpdate(EmployeesDTO dto) {
		statement = namespace + ".empPwUpdate";
		sqlSession.update(statement,dto);
	}
	//직원 리스트
	public List<EmployeesDTO> empList(EmployeesDTO dto){
		statement = namespace + ".empList";
		return sqlSession.selectList(statement, dto);
	}
	public int count() {
		statement = namespace + ".count";
		return sqlSession.selectOne(statement);
	}
}
