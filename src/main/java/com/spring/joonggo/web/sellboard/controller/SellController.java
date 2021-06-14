package com.spring.joonggo.web.sellboard.controller;

import com.spring.joonggo.web.common.paging.Criteria;
import com.spring.joonggo.web.common.paging.PageMaker;
import com.spring.joonggo.web.nboard.domain.DummyNBoard;
import com.spring.joonggo.web.nboard.domain.NBoard;
import com.spring.joonggo.web.sellboard.domain.DummyBoard;
import com.spring.joonggo.web.sellboard.domain.SellBoard;
import com.spring.joonggo.web.sellboard.service.SellBoardService;
import com.spring.joonggo.web.user.domain.User;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    public String sellList(@ModelAttribute("cri") Criteria criteria
            , Model model
            , HttpSession session) {
//        List<SellBoard> sellList = sellBoardService.findAll();
        model.addAttribute("sellList", sellBoardService.findAll(criteria));

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
//        System.out.println("============================================");
//        System.out.println(sellBoard);
//        System.out.println("============================================");
        sellBoardService.addProduct(sellBoard);
        return "redirect:/";
    }

    @GetMapping("/content")
    public String detailContent(int productNum
            , @ModelAttribute("cri") Criteria criteria
            , Model model
            , HttpSession session) {
        SellBoard sellBoard = sellBoardService.intoContent(productNum);
//        board =  boardService.viewCount(board);
//        model.addAttribute("cri", criteria);
        model.addAttribute("sellBoard", sellBoard);
        return "/sellboard/sellboard-content";
    }

    @GetMapping("/delete")
    public String deleteList(int productNum) {
        sellBoardService.deleteProduct(productNum);
        return "redirect:/";
    }

    @GetMapping("/modify")
    public String modify(int productNum
                    , Model model
                    , HttpSession session) {
        SellBoard sellBoard = sellBoardService.intoContent(productNum);
//        User loginUser = (User) session.getAttribute("loginUser");
        model.addAttribute("sellBoard", sellBoard);
//        model.addAttribute("loginUser", session);
        return "/sellboard/sellboard-modify";
    }

    @PostMapping("/modify")
    public String modifySave(int productNum, DummyBoard dummyBoard) {
        System.out.println("==============================================");
        System.out.println(dummyBoard);
        System.out.println("==============================================");
        sellBoardService.modifyProduct(productNum, dummyBoard);
        return "redirect:/";
    }


}
