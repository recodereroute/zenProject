package service.main;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import repository.RegisterRepository;

public class ChekcIdService {
	@Autowired
	RegisterRepository registerRepository;
	
	public AuthInfoDTO check(String userId) {
		AuthInfoDTO authInfo = registerRepository.checkId(userId);
		return authInfo;
	}
}
