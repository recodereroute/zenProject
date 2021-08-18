package Model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardCommentDTO {
	String boardCmntNo;
    String cmntMemId;
    String boardMemId;
    String boardNo;
    String boardCmntCon;
    Date boardCmntDate;
}
