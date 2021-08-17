package service.column;

import org.springframework.beans.factory.annotation.Autowired;

import repository.ColumnRepository;
import repository.NoticeRepository;

public class ColumnDeleteService {
	@Autowired
	ColumnRepository columnRepository;
	public void columnDel(String noticeNo) {
		columnRepository.columnDel(noticeNo);
	}
}
