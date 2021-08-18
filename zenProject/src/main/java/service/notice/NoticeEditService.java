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
		
		NoticeDTO fdto = noticeRepository.noticeDetail(noticeCommand.getNoticeNo());
		
		String original = fdto.getNoticeOrgFile();
		String store = fdto.getNoticeFile();
		String fileSize = fdto.getNoticeFileSize();
		String realPath = session.getServletContext().getRealPath("WEB-INF/view/notice/upload");
		
		String[] fileNames = noticeCommand.getFileDel().split("/");
		if(!fileNames[0].equals("")) {
			String org = "";
			String str = "";
			String fSize = "";
			for(String s : fileNames) { 
				org += s.split(",")[0] + ",";
				str += s.split(",")[1] + ",";
				fSize += s.split(",")[2] + ",";
			}
			int i = 0;
			if(!fileNames[0].equals("")) {
				for(String o : org.split(",")) {
					String or = o + ",";
					String sr = str.split(",")[i]+",";
					String fs = fSize.split(",")[i] + ",";
					original = original.replace(or  ,"" );
					store = store.replace( sr , "");
					fileSize = fileSize.replace(fs , "");
					File file = new File(realPath+"/"+str.split(",")[i]);
					if(file.exists())file.delete();
					i++;
				}
			}
		}
		
		//파일 추가
		String originalTotal = "";
		String storeTotal = "";
		String fileSizeTotal = "";
		if(noticeCommand.getNoticeFile()[0].getOriginalFilename() != "") {
			for(MultipartFile mf : noticeCommand.getNoticeFile()) {
				String original1 = mf.getOriginalFilename();
				//확장자
				String originalExt = original.substring(original.lastIndexOf("."));
				//저장되는 파일 이름
				String store1 = UUID.randomUUID().toString().replace("-", "") + originalExt;
				String fileSize1 =Double.toString(Math.round((mf.getSize()/1024.0) * 100)/(double)100);
				originalTotal += original1 +",";
				storeTotal += store1 + ",";
				fileSizeTotal += fileSize1 + ",";	
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
			dto.setNoticeOrgFile((original + originalTotal).replace("null", ""));
			dto.setNoticeFile((store+storeTotal).replace("null", ""));
			dto.setNoticeFileSize((fileSize+fileSizeTotal).replace("null", ""));
			
		}else {
			dto.setNoticeOrgFile(originalTotal);
			dto.setNoticeFile(storeTotal);
			dto.setNoticeFileSize(fileSizeTotal);
			
		}
		
		noticeRepository.noticeEdit(dto);
	}
}
