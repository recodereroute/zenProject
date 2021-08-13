package command;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardCommand {
	int boardNo;
	String boardTitle;
	String boardCon;
	String boardFile;
}
