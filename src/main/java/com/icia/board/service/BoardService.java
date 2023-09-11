package com.icia.board.service;

import com.icia.board.dto.BoardDTO;
import com.icia.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BoardService {
    @Autowired
    public BoardRepository boardRepository;

    public boolean save(BoardDTO boardDTO){
        int result = boardRepository.save(boardDTO);
        if(result > 0) {
            return true;
        } else {
            return false;
        }
    }

    public List<BoardDTO> findAll(){
        return boardRepository.findAll();
    }
}