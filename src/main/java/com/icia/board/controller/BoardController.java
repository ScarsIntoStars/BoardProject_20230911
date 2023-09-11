package com.icia.board.controller;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class BoardController {
    @Autowired
    public BoardService boardService;

    @GetMapping("/board/save")
    public String boardSave(){
        return "board/boardSave";
    }

    @PostMapping("/board/save")
    public String boardSave(BoardDTO boardDTO){
        boolean result = boardService.save(boardDTO);
        if(result) {
            System.out.println("학생등록 성공");
            return "index";
        } else {
            System.out.println("학생등록 실패");
            return "/board/boardSave";
        }
    }

    @GetMapping("/board/findAll")
    public String findAll(Model model){
        List<BoardDTO> boardDTOList = boardService.findAll();
        model.addAttribute("boardList", boardDTOList);
        return "/board/boardFindAll";
    }

//    @GetMapping("/board/findByTitle")
//    public String
}
