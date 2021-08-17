package command;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeCommand {
	String noticeNo;
	String noticeTitle;
	String noticeCon;
	MultipartFile []noticeFile;
	String noticeKind;
	
	String fileDel;
}
