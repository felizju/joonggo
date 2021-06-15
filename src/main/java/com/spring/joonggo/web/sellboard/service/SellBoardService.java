package com.spring.joonggo.web.sellboard.service;

import com.spring.joonggo.web.common.paging.Criteria;
import com.spring.joonggo.web.sellboard.domain.DummyBoard;
import com.spring.joonggo.web.sellboard.domain.SellBoard;

import com.spring.joonggo.web.sellboard.domain.SellStateFlag;

import com.spring.joonggo.web.sellboard.repository.SellBoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    public void modifyProduct(int productNum, DummyBoard dummyBoard) {
        System.out.println("====================================================");
        System.out.println(productNum);

        dummyBoard.setProductNum(productNum);
        sellBoardMapper.modifyProduct(productNum, dummyBoard);
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

    @Transactional // 트랜잭션 처리 자동화
    public void addList(SellBoard sellBoard) {
        sellBoardMapper.addProduct(sellBoard);
        // 첨부파일이 존재한다면 추가 쿼리 동작
        List<String> filePathList = sellBoard.getFilePathList();
        if (filePathList != null){
            for (String path : filePathList) {
                sellBoardMapper.addFile(path);
            }
        }
    }

    // 파일 로드 기능

}
