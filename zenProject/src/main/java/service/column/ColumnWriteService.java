package service.column;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.AuthInfoDTO;
import Model.NoticeDTO;
import command.NoticeCommand;
import repository.ColumnRepository;

public class ColumnWriteService {
	@Autowired
	ColumnRepository columnRepository;
	public void columnWrite(NoticeCommand noticeCommand , HttpSession session) {
		 NoticeDTO dto= new NoticeDTO();
		 dto.setNoticeCon(noticeCommand.getNoticeCon());
		 dto.setNoticeTitle(noticeCommand.getNoticeTitle());
		 AuthInfoDTO authInfo=(AuthInfoDTO)session.getAttribute("authInfo");
		 String empNo=authInfo.getGrade();
		 dto.setEmpNo(empNo);
			columnRepository.columnWrite(dto);
	}
}