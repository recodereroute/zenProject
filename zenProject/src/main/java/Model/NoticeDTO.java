package Model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class NoticeDTO {
    int noticeNO;
    String noticeTitle;
    String noticeCon;
    Date noticeDate;
    String noticeFile;
    int noticeKind;
    int noticeCnt;
    int empNo;
}
