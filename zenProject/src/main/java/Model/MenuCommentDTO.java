package Model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MenuCommentDTO {
    String menuCmntNo;
    String menuNo;
    String menuRecipe;
    String memId;
    String menuCmntCon;
    Date menuCmntDate;
}
