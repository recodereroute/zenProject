package controller.board;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;

public class FileDownLoad {
	public void fileDownLoad(String path ,String store , String original , 
			HttpServletRequest request,
			HttpServletResponse response) {
		String RealPath =request.getServletContext().getRealPath(path);
		String originalFileName="";
		try {
			originalFileName =URLEncoder.encode(original,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("application/octet-stream; charset=utf-8");
		response.setHeader("Content-Disposition", "attachment;filename=\""+originalFileName+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		File file= new File(RealPath +"/"+store);
		ServletOutputStream out1=null;
		FileInputStream fis = null;
		try {
			out1 =response.getOutputStream();
			fis=new FileInputStream(file);
					FileCopyUtils.copy(fis, out1);
			response.flushBuffer();
			out1.flush();
			out1.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(fis!=null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
				
	}
}
