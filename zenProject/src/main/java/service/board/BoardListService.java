package service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BoardDTO;
import Model.NoticeDTO;
import Model.StartEndPageDTO;
import controller.board.PageAction;
import repository.BoardRepository;

public class BoardListService {
	@Autowired
	BoardRepository boardRepository;

	public void boardList(Integer page, Model model) {
		BoardDTO dto = new BoardDTO();
		int limit = 3;
		int limitPage = 10;
		if (page != null) {
			Long startRow = ((long) page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
		}
		
		List<BoardDTO> list = boardRepository.boardList(dto);
		NoticeDTO noticeOne = boardRepository.noticeOne();
		int count = boardRepository.count();
		model.addAttribute("boardLists", list);
		model.addAttribute("count", count);
		model.addAttribute("nOne",noticeOne);
		
		if (page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, page, limitPage, model, "boardList");
		}
	}
}
