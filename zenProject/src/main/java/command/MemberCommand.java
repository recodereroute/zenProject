package command;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberCommand {
	String memId;
	String memPw;
	String memPwCon;
	String memName;
	String memNick;
	String memPhone;
	String memSex;
	String memEmail;
	String memEmailChk;
	String oldPw;
	
	public boolean pwMatching() {
		return memPw.equals(memPwCon);
	}
}