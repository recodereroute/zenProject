package command;


import org.springframework.web.multipart.MultipartFile;
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class BoardCommand {
	int boardNo;
	String boardTitle;
	String boardCon;
	MultipartFile[]boardFile;
}
