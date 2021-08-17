package Model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class NoticeDTO {
    String noticeNo;
    String noticeTitle;
    String noticeCon;
    Date noticeDate;
    String noticeFile;
    String noticeKind;
    String noticeCnt;
    String empNo;
    
    String noticeOrgFile;
	String noticeFileSize;
}
