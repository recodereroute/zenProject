package Model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class EmployeesDTO {
    String empNo;
    String empId;
    String empPw;
    String empName;
    Date empHireDate;
    String empJob;
    String empPhone;
    String empOfficeNum;
    String empEmail;
    String empPost;
    String empAddr;
    String empDetailAddr;
    
    StartEndPageDTO startEndPageDTO;
}
