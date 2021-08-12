package Model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class EmployeesDTO {
    int empNo;
    String empId;
    String empPw;
    String empName;
    Date hireDate;
    String empJob;
    String empPhone;
    String empOfficeNum;
    String empEmail;
    String empAddr;
    String empDetailAddr;
}
