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
	

		String originalTotal="";
		String storeTotal="";
		String fileSizeTotal="";
		if(boardCommand.getBoardFile()[0].getOriginalFilename()!="") {
			for(MultipartFile mf:boardCommand.getBoardFile()) {
				String original=mf.getOriginalFilename();
				String originalExt=
						//���� �̸�
						original.substring(original.lastIndexOf("."));
				String store=
						//���� �̸� �ֱ�
						UUID.randomUUID().toString().replace("- ", "")+
						originalExt;
				//���� ������ �������
				String fileSize =Double.toString(Math.round((mf.getSize()/1024.0) * 100)/(double)100);
				originalTotal+=original+",";
				storeTotal +=store+",";
				fileSizeTotal+= fileSize+",";
				//���ϰ�� ���������
				String path="WEB-INF/view/lib/upload";
				String realPath=
						session.getServletContext().getRealPath(path);
				//���� �����ϱ� 
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
		
		
		
		boardRepository.boardModify(dto);
		
}
}
