package command;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class LoginCommand {
	private String userId;
	private String userPw;
	
	private Boolean idStore;
	private Boolean autoLogin;

	
	
}

