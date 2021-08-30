package service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BoardDTO;
import repository.BoardRepository;

public class MainBoardListService {
	@Autowired
	BoardRepository boardRepository;
	public void mainBoardList(Model model) {
		List<BoardDTO> list = boardRepository.mainBoardList();
		model.addAttribute("mainBoardList", list);
	}
}
