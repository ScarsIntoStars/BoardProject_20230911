package com.icia.board.controller;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
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
    public String boardSave(BoardDTO boardDTO) throws IOException {
        boardService.save(boardDTO);
            return "/board/boardSave";
        }


    @GetMapping("/board/findAll")
    public String findAll(Model model){
        List<BoardDTO> boardDTOList = boardService.findAll();
        model.addAttribute("boardList", boardDTOList);
        return "/board/boardFindAll";
    }

//    @GetMapping("/board/findByTitle")
//    public String

//    @GetMapping
//    public String findById(@RequestParam("id") Long id, Model model) {
//        // 데이터처리
//        // 데이터 가져오기
//        boardService.updateHits(id);
////        BoardDTO boardDTO = boardService.findById(id);
////        model.addAttribute("board" boardDTO);
//        return "boardPages/boardDetail";
//    }

    @GetMapping("/board/findByTitle")
    public String findByTitle(@RequestParam("id") Long id, Model model){
        BoardDTO result = boardService.findByTitle(id);
        model.addAttribute("board", result);
        return "/board/boardDetail";
    }

    @GetMapping("/board/update")
    public String updateForm(@RequestParam("id") Long id, Model model) {
        BoardDTO boardDTO = boardService.findByTitle(id);
        model.addAttribute("board", boardDTO);
        return "/board/boardUpdate";
    }

    @PostMapping("/board/update")
    public String update(@RequestParam BoardDTO boardDTO, Model model) {
        boardService.update(boardDTO);
        BoardDTO dto = boardService.findByTitle(boardDTO.getId());
        model.addAttribute("board", dto);
        return "/board/boardDetail";
//        return "redirct:/board?id=" + boardDTO.getId();
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id) {
        boardService.delete(id);
        return "redirect:/board/";
    }
}
