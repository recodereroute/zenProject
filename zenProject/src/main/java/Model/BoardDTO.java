package Model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardDTO {
    String memId;
    int boardNo;
    String boardTitle;
    String boardFile;
    int boardCnt;
}
