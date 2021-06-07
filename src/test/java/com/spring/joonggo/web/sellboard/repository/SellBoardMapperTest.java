package com.spring.joonggo.web.sellboard.repository;

import com.spring.joonggo.web.common.paging.Criteria;
import com.spring.joonggo.web.sellboard.domain.SellBoard;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class SellBoardMapperTest {

    @Autowired
    private SellBoardMapper sellBoardMapper;

    @Test
    void findAll() {

        List<SellBoard> sellBoardList = new ArrayList<>();
        sellBoardList = sellBoardMapper.findAll(new Criteria(1, 10));
        System.out.println("=====================================================");
        for (SellBoard sellBoard : sellBoardList) {
            System.out.println(sellBoard);
        }
        System.out.println("========================================================");
    }

    @Test
    void getTotalCounter() {
    }

    @Test
    void addProduct() {

        SellBoard sellBoard = new SellBoard();
        sellBoard.setProductName("자전거");
        sellBoard.setSellPrice(5000000);
        sellBoard.setProductContent("테슬라 최고급 자전거팝니다. 네고없음");
        sellBoard.setSellerNick("양아치");
        sellBoard.setSellerId("qwe123");
        sellBoard.setSellArea("서울광역시 구로구");

        sellBoardMapper.addProduct(sellBoard);

    }

    @Test
    void deleteProduct() {
    }

    @Test
    void modifyProduct() {
    }

    @Test
    void intoContent() {
    }

    @Test
    void addViews() {
    }
}