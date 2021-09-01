package service.board;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.BoardDTO;
import command.BoardCommand;
import repository.BoardRepository;

public class BoardModifyService {
@Autowired
BoardRepository boardRepository;
public void boardModify(BoardCommand boardCommand,HttpSession session) {
		BoardDTO dto=new BoardDTO();
		dto.setBoardNo(boardCommand.getBoardNo());
		dto.setBoardCon(boardCommand.getBoardCon());
		dto.setBoardTitle(boardCommand.getBoardTitle());

		BoardDTO fdto = boardRepository.boardDetail(boardCommand.getBoardNo());
		
		String original = fdto.getBoardOrgFile();
		String store = fdto.getBoardFile();
		String fileSize = fdto.getBoardFileSize();
		String realPath = session.getServletContext().getRealPath("WEB-INF/view/library/upload");
		
		String [] fileNames = boardCommand.getFileDel().split("/");
		if(!fileNames[0].equals("")) {
			String org = "";
			String str = "";
			String fSize = "";
			for(String s : fileNames) {
			org += s.split(",")[0] +",";
			str += s.split(",")[1] +",";
			fSize += s.split(",")[2] +",";
			}
			int i = 0;
			if(!fileNames[0].equals("")) {
				for(String o : org.split(",")) {
					String or = o + ",";
					String sr = str.split(",")[i]+",";
					String fs = fSize.split(",")[i] +",";
					original = original.replace(or  ,"" );
					store = store.replace( sr , "");
					fileSize = fileSize.replace(fs , "");
					File file = new File(realPath+"/"+str.split(",")[i]);
					if(file.exists())file.delete();
					i++;
				}
			}
		}
		//�뙆�씪 異붽�
		String originalTotal = "";
		String storeTotal = "";
		String fileSizeTotal ="";
		if(boardCommand.getBoardFile()[0].getOriginalFilename()!= "") {
			for(MultipartFile mf : boardCommand.getBoardFile()) {
				String original1 = mf.getOriginalFilename();
				String originalExt = original1.substring(original1.lastIndexOf("."));
				String store1 = //xnbsvklbsvfwssvsvfws.hwp
						UUID.randomUUID().toString().replace("-","")
						+ originalExt;
				String fileSize1 =Double.toString(Math.round((mf.getSize()/1024.0) * 100)/(double)100);
				originalTotal += original1 + ",";
				storeTotal += store1 + ",";
				fileSizeTotal += fileSize1 + ",";
				File file = new File(realPath + "/" + store);
				try {mf.transferTo(file);}catch(Exception e) {}
			}
			dto.setBoardOrgFile((original+originalTotal).replace("null", ""));
			dto.setBoardFile((store+storeTotal).replace("null", ""));
			dto.setBoardFileSize((fileSize+fileSizeTotal).replace("null", ""));
		}else {
			dto.setBoardOrgFile(original);
			dto.setBoardFile(store);
			dto.setBoardFileSize(fileSize);
		}	
		boardRepository.boardModify(dto);
	}
}