package Model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberDTO {
	String memId;
	String memPw;
	String memNick;
	String memName;
	String memPhone;
	String memSex;
	String memEmail;
	String memEmailChk;
	StartEndPageDTO startEndPageDTO;
	
}
