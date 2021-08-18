package Model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MenuDTO {
    int menuNo;
    String menuRecipe;
    String menuName;
    String menuImg;
    String menuMainItem;
    String menuSubItem;
    int menuRecmnd;
    int menuCnt;
    int empNo;
    
    StartEndPageDTO startEndPageDTO;
}
