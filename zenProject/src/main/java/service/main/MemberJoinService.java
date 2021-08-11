package service.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.MemberDTO;
import command.MemberCommand;
import repository.RegisterRepository;

public class MemberJoinService {
	@Autowired
	RegisterRepository registerRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	public void memJoin(MemberCommand memberCommand) {
		MemberDTO dto = new MemberDTO();
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemEmailChk(memberCommand.getMemEmailChk());
		dto.setMemId(memberCommand.getMemId());
		dto.setMemName(memberCommand.getMemName());
		dto.setMemNick(memberCommand.getMemNick());
		dto.setMemPhone(memberCommand.getMemPhone());
		dto.setMemPw(bcryptPasswordEncoder.encode(memberCommand.getMemPw()));
		dto.setMemSex(memberCommand.getMemSex());
		registerRepository.memJoin(dto);
	}
}
