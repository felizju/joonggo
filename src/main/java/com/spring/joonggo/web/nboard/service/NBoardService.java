package com.spring.joonggo.web.nboard.service;

import com.spring.joonggo.web.nboard.repository.NBoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class NBoardService {

    private final NBoardMapper nBoardMapper;


}
