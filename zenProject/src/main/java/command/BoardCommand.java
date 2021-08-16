package command;


import org.springframework.web.multipart.MultipartFile;
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class BoardCommand {
	String boardNo;
	String boardTitle;
	String boardCon;
	MultipartFile[]boardFile;
	String fileDel;
}
