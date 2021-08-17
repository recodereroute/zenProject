package service.column;

import org.springframework.beans.factory.annotation.Autowired;

import command.NoticeCommand;
import Model.NoticeDTO;
import repository.ColumnRepository;
import repository.NoticeRepository;

public class ColumnModifyService {
	@Autowired
	ColumnRepository columnRepository;
	public void columnModify(NoticeCommand noticeCommand) {
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeNo(noticeCommand.getNoticeNo());
		dto.setNoticeCon(noticeCommand.getNoticeCon());
		dto.setNoticeTitle(noticeCommand.getNoticeTitle());
		
		columnRepository.columnModify(dto);
	}
}
