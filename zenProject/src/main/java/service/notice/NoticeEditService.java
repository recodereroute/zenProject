package service.notice;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.NoticeDTO;
import command.NoticeCommand;
import repository.NoticeRepository;

public class NoticeEditService {
	@Autowired
	NoticeRepository noticeRepository;
	public void notieceEdit(NoticeCommand noticeCommand,HttpSession session) {
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeNo(noticeCommand.getNoticeNo());
		dto.setNoticeTitle(noticeCommand.getNoticeTitle());
		dto.setNoticeCon(noticeCommand.getNoticeCon());
		
		String originalTotal = "";
		String storeTotal = "";
		String fileSizeTotal = "";
		if(noticeCommand.getNoticeFile()[0].getOriginalFilename() != "") {
			for(MultipartFile mf : noticeCommand.getNoticeFile()) {
				String original = mf.getOriginalFilename();
				//확장자
				String originalExt = original.substring(original.lastIndexOf("."));
				//저장되는 파일 이름
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				String fileSize =Double.toString(Math.round((mf.getSize()/1024.0) * 100)/(double)100);
				originalTotal += original +",";
				storeTotal += store + ",";
				fileSizeTotal += fileSize + ",";
				String path = "WEB-INF/view/notice/upload";
				String realPath = session.getServletContext().getRealPath(path);	
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
				dto.setNoticeOrgFile(originalTotal);
				dto.setNoticeFile(storeTotal);
				dto.setNoticeFileSize(fileSizeTotal);
			}
		}
		
		noticeRepository.noticeEdit(dto);
	}
}
