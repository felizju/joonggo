package com.spring.joonggo.web.sellboard.service;

import com.spring.joonggo.web.common.paging.Criteria;
import com.spring.joonggo.web.sellboard.domain.SellBoard;

import com.spring.joonggo.web.sellboard.domain.SellStateFlag;

import com.spring.joonggo.web.sellboard.repository.SellBoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SellBoardService {

    @Autowired
    private final SellBoardMapper sellBoardMapper;

    // 게시물 검색
    public List<SellBoard> findAll(Criteria criteria) {
        return sellBoardMapper.findAll(criteria);
    }

    // 게시물 추가
    public void addProduct(SellBoard sellBoard) {
        sellBoardMapper.addProduct(sellBoard);
    }

    // 게시물 삭제
    public void deleteProduct(int productNum) {
        sellBoardMapper.deleteProduct(productNum);
    }

    // 게시물 수정
    public void modifyProduct(SellBoard sellBoard) {
        sellBoardMapper.modifyProduct(sellBoard);
    }

    // 게시물 상세보기
    public SellBoard intoContent(int productNum) {
        sellBoardMapper.addViews(productNum);
        return sellBoardMapper.intoContent(productNum);
    }

    // 게시물 총 수 확인
    public int getTotal(Criteria criteria) {
        return sellBoardMapper.getTotalCounter(criteria);
    }

    // 상태 변경 기능
    public void modifyState(int productNum, SellStateFlag stateFlag) {
        sellBoardMapper.modifyState(productNum, stateFlag);
    }

}
