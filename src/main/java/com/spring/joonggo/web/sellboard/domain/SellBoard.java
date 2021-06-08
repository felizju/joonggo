package com.spring.joonggo.web.sellboard.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.Date;

@Getter @Setter
@ToString
public class SellBoard {

    private static int sequence;

    private int productNum;  //상품 번호
    private String productName; //상품 이름
    private int sellPrice; // 판매 금액
    private String productContent; // 상품내용
    private String sellArea; // 판매 지역
    private Date createDate; // 생성일자
    private int viewCount; //조회수
    private String sellerId; // 판매자 ID
    private String sellerNick; // 판매자 닉네임
    private String buyerId; // 구매자 ID
    private String buyerNick; // 구매자 닉네임
    private String sellState; // 판매 상태

    public SellBoard() {
        this.productNum = ++sequence;
    }

    public SellBoard(String productName
            , int sellPrice
            , String productContent
            , String sellArea
            , String sellerId
            , String sellerNick) {
        this();
        this.productName = productName;
        this.sellPrice = sellPrice;
        this.productContent = productContent;
        this.sellArea = sellArea;
        this.sellerId = sellerId;
        this.sellerNick = sellerNick;

    }

}