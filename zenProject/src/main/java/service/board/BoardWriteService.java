package service.board;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.AuthInfoDTO;
import Model.BoardDTO;
import command.BoardCommand;
import repository.BoardRepository;

public class BoardWriteService {
@Autowired
BoardRepository boardRepository; 
	public void boardWrite(BoardCommand boardCommand,HttpSession session) {
		
		AuthInfoDTO authInfo =(AuthInfoDTO)session.getAttribute("authInfo");
		String memId=authInfo.getUserId();
		BoardDTO dto= new BoardDTO();
		dto.setBoardNo(boardCommand.getBoardNo());
		dto.setBoardTitle(boardCommand.getBoardTitle());
		dto.setBoardCon(boardCommand.getBoardCon());
		dto.setMemId(memId);
		
		String originalTotal="";
		String storeTotal="";
		String fileSizeTotal="";
		if(boardCommand.getBoardFile()[0].getOriginalFilename()!="") {
			for(MultipartFile mf:boardCommand.getBoardFile()) {
				String original=mf.getOriginalFilename();
				String originalExt=
						original.substring(original.lastIndexOf("."));
				String store=
						UUID.randomUUID().toString().replace("- ", "")+
						originalExt;
				String fileSize =Double.toString(Math.round((mf.getSize()/1024.0) * 100)/(double)100);
				originalTotal+=original+",";
				storeTotal +=store+",";
				fileSizeTotal+= fileSize+",";
				String path="WEB-INF/view/library/upload";
				String realPath = session.getServletContext().getRealPath(path);
				File  file=new File(realPath+"/"+store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
				dto.setBoardOrgFile(originalTotal);
				dto.setBoardFile(storeTotal);
				dto.setBoardFileSize(fileSizeTotal);
			}
		}
		boardRepository.boardWrite(dto);
	}
}
