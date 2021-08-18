package service.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BoardDTO;
import repository.BoardRepository;


public class BoardDetailService {
	@Autowired
	BoardRepository boardRepository;
	public void boardDetail(String boardNo ,Model model) {
		boardRepository.boardReadUpdate(boardNo);
		BoardDTO dto= boardRepository.boardDetail(boardNo);
		model.addAttribute("dto",dto);
	}
	public void boardUpdate(String boardNo, Model model) {
		BoardDTO dto= boardRepository.boardDetail(boardNo);
		model.addAttribute("dto",dto);
	}
}