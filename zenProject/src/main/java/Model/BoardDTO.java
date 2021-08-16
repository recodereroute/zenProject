package Model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class BoardDTO {
    String memId;
    int boardNo;
    String boardTitle;
    String boardFile;
    Date boardDate;
    int boardCnt;
    String boardCon;
    String boardOrgFile;
    String boardFileSize;
    StartEndPageDTO startEndPageDTO;
}
