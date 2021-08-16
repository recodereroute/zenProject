package Model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class BoardDTO {
    String memId;
    String boardNo;
    String boardTitle;
    String boardFile;
    Date boardDate;
    String boardCnt;
    String boardCon;
    String boardOrgFile;
    String boardFileSize;
    StartEndPageDTO startEndPageDTO;
}
