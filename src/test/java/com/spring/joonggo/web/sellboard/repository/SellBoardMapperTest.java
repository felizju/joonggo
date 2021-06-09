package com.spring.joonggo.web.sellboard.repository;

import com.spring.joonggo.web.common.paging.Criteria;
import com.spring.joonggo.web.sellboard.domain.SellBoard;

import com.spring.joonggo.web.sellboard.domain.SellCategory;

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
        Criteria criteria = new Criteria();
        criteria.setType("title");
        criteria.setKeyword("고급");

        for (SellBoard searchArticles : sellBoardMapper.findAll(criteria)){
            System.out.println(searchArticles);
        }
    }

    @Test
    void addProduct() {


        /*String productName
            , int sellPrice
            , String productContent
            , String sellArea
            , String sellerId
            , String sellerNick
            , SellCategory sellCategory*/

        SellBoard sellBoard = new SellBoard("자전거", 5000000, "테슬라 최고급 자전거팝니다. 네고없음"
                , "서울광역시 구로구", "qwe123", "양아치", SellCategory.HOME);

//        System.out.println(sellBoard);

        sellBoardMapper.addProduct(sellBoard);

    }

    @Test
    void deleteProduct() {
        sellBoardMapper.deleteProduct(2);
    }

    @Test
    void modifyProduct() {

        System.out.println("================================================");
        SellBoard sellBoard = new SellBoard();
        sellBoard.setSellPrice(7000000);
        sellBoard.setProductContent("페라리 자전거 살 사람 구함. 네고 절대 안됨");
        sellBoard.setProductName("페롸리~ 고급진 자전차~~");
        sellBoard.setSellArea("부산광역시 해운대~~");
        sellBoard.setProductNum(4);
        sellBoardMapper.modifyProduct(sellBoard);

    }

    @Test
    void intoContent() {

        System.out.println("=================================================");
        SellBoard sellBoard = new SellBoard();
        sellBoard = sellBoardMapper.intoContent(2);
        System.out.println(sellBoard);
        System.out.println("=========================================================");

    }

}