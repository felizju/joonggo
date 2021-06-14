package com.spring.joonggo.web.sellboard.controller;

import com.spring.joonggo.web.common.paging.Criteria;
import com.spring.joonggo.web.common.paging.PageMaker;
import com.spring.joonggo.web.sellboard.domain.SellBoard;
import com.spring.joonggo.web.sellboard.service.SellBoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class SellController {

    private final SellBoardService sellBoardService;

   /* @Autowired
    public SellController(SellBoardService sellBoardService) {
        this.sellBoardService = sellBoardService;
    }*/

    @GetMapping("")
    public String sellList(Criteria criteria, Model model
            , HttpSession session) {
        List<SellBoard> sellList = sellBoardService.findAll(criteria);
        model.addAttribute("sellList", sellList);

        // 페이지 정보 만들어서 jsp에게 전달
        model.addAttribute("pageMaker", new PageMaker(criteria, sellBoardService.getTotal(criteria)));
        return "/sellboard/home";
    }

    @GetMapping("/sellboard-write")
    public String write(HttpSession session) {
        return "/sellboard/sellboard-write";
    }

    @PostMapping("/sellboard-write")
    public String write(SellBoard sellBoard
            , HttpSession session) {
        System.out.println(sellBoard);
        sellBoardService.addProduct(sellBoard);
        return "redirect:/";
    }




}
