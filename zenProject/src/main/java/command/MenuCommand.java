package command;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MenuCommand {
	String menuNo;
    String menuRecipe;
    String menuName;
    MultipartFile[] menuImg;
    String menuMainItem;
    String menuSubItem;
    String menuRecmnd;
    String menuCnt;
    String empNo;
    String FileDel;
}
