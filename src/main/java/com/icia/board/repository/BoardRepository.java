package com.icia.board.repository;

import com.icia.board.dto.BoardDTO;
import org.apache.ibatis.jdbc.SQL;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class BoardRepository {
    @Autowired
    public SqlSessionTemplate sql;
    public int save(BoardDTO boardDTO) {
        int result = sql.insert("Board.save", boardDTO);
        return result;
    }

    public List<BoardDTO> findAll() {
        return sql.selectList("Board.findAll");
    }

    public void updateHits(Long id) {
        sql.update("Board.updateHits", id);
    }


    public BoardDTO findById(Long id) {
        BoardDTO result = sql.selectOne("Board.findById", id);
        return result;
    }

    public void update(BoardDTO boardDTO) {
        sql.update("Board.update", boardDTO);
    }

    public void delete(Long id) {
        sql.delete("Board.delete", id);
    }
}
