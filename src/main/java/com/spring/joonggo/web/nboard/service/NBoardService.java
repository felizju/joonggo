package com.spring.joonggo.web.nboard.service;

import com.spring.joonggo.web.common.paging.Criteria;
import com.spring.joonggo.web.nboard.domain.DummyNBoard;
import com.spring.joonggo.web.nboard.domain.NBoard;
import com.spring.joonggo.web.nboard.repository.NBoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class NBoardService {

    private final NBoardMapper nBoardMapper;

    // 게시글 저장 기능
    public void register(NBoard nBoard) {
        nBoardMapper.save(nBoard);
    }

    // 게시글 목록을 받아오는 기능 (내림차순)
    public List<NBoard> getBoardList(Criteria criteria) {
        return nBoardMapper.getSearchBoards(criteria);
    }

    // 총 게시물 수 확인
    public int getTotal(Criteria criteria) {
        return nBoardMapper.getTotalBoardCount(criteria);
    }

    // 게시글 삭제 기능
    public void delete(int boardNo) {
        nBoardMapper.remove(boardNo);
    }

    // 게시글 수정 기능
    public void modify(int boardNo, DummyNBoard dummyNBoard) {
        dummyNBoard.setBoardNo(boardNo);
        nBoardMapper.change(dummyNBoard);
    }

    // 게시글 조회 기능
    public NBoard viewDetail(int boardNo, boolean viewFlag) {
        if (viewFlag) nBoardMapper.plusViews(boardNo);
        return nBoardMapper.findOne(boardNo);
    }

    // 게시글 추천 기능
    public void plusRecommend(int boardNo) {
        nBoardMapper.plusRec(boardNo);
    }



}
