package service.notice;

import org.springframework.beans.factory.annotation.Autowired;

import Model.NoticeDTO;
import command.NoticeCommand;
import repository.NoticeRepository;

public class NoticeEditService {
	@Autowired
	NoticeRepository noticeRepository;
	public void notieceEdit(NoticeCommand noticeCommand) {
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeNo(noticeCommand.getNoticeNo());
		dto.setNoticeTitle(noticeCommand.getNoticeTitle());
		dto.setNoticeCon(noticeCommand.getNoticeCon());
		noticeRepository.noticeEdit(dto);
	}
}
