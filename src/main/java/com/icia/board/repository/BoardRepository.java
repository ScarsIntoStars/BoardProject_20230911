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
}
