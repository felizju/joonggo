package com.spring.joonggo.web.nboard.controller;

import com.spring.joonggo.web.nboard.service.NBoardService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
@Log4j2
public class NBoardController {

    private final NBoardService nBoardService;

    @Autowired
    public NBoardController(NBoardService nBoardService) {
        this.nBoardService = nBoardService;
    }



}
