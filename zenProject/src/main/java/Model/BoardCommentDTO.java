package Model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardCommentDTO {
    int boardCmntNo;
    String cmntMemId;
    String boardMemId;
    int boardNo;
    String boardCmntCon;
    Date boardCmntDate;
}
