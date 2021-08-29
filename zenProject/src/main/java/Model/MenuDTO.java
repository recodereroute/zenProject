package Model;


import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MenuDTO {
    String menuNo;
    String menuRecipe;
    String menuName;
    String menuImg;
    String menuMainItem;
    String menuSubItem;
    String menuRecmnd;
    String menuCnt;
    String empNo;
    Date menuDate;
    
    StartEndPageDTO startEndPageDTO;
    String empName;
}
