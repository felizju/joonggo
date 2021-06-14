package com.spring.joonggo.web.user.controller;

import com.spring.joonggo.web.user.domain.LoginInfo;
import com.spring.joonggo.web.user.domain.User;
import com.spring.joonggo.web.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {

    private final UserService userService;

    //회원가입 화면요청
    @GetMapping("/sign-up")
    public String signUp() {
        log.info("/user/sign-up GET 요청! - ");
        return "user/signUp";
    }

    //회원가입 처리 요청
    @PostMapping("/sign-up")
    public String signUp(User user) {
        log.info("/user/sign-up POST 요청! - " + user);
        userService.registerAccount(user);
        return "user/logIn";
    }

    //아이디, 이메일, 닉네임 중복체크 비동기 요청 처리
    @GetMapping("/check")
    @ResponseBody
    public ResponseEntity<Boolean> check(String type, String keyword) {
        log.info("/check GET 비동기 요청! - " + type + " " + keyword);
        boolean flag = userService.isDuplicate(type, keyword);
        return new ResponseEntity<>(flag, HttpStatus.OK);
    }

    //로그인 화면 요청
    @GetMapping("/sign-in")
    public String signIn() {
        return "user/logIn";
    }

    //로그인 검증 요청처리
    @PostMapping("/loginCheck")
    public String loginCheck(LoginInfo inputUser, Model model, HttpSession httpSession, HttpServletResponse response) {
        log.info("/loginCheck POST 요청! - " + inputUser);
        //로그인 처리
        String resultMessage = userService.login(inputUser);
        log.info("resultMessage = " + resultMessage);
        model.addAttribute("result", resultMessage);

        if(resultMessage.equals("success")) {
            httpSession.setAttribute("loginUser", userService.getUser(inputUser.getUserId())); //세션에 정보 저장
            if(inputUser.isAutoLogin()) {
                log.info("자동로그인 처리");
                userService.saveKeepLogin(httpSession, response, inputUser.getUserId());
            }
            return "redirect:/";
//            return "user/logIn";
        }
        return "user/login-result";
    }


    //로그아웃 요청처리
    @GetMapping("/logout")
    public String logOut(HttpSession session, HttpServletResponse response, HttpServletRequest request) {
        log.info("/user/logOut GET 요청! - ");
        User loginUser = (User) session.getAttribute("loginUser");
        if(loginUser != null) {
            session.removeAttribute("loginUser");
            session.invalidate();

            Cookie logInCookie = WebUtils.getCookie(request, "loginCookie");

            if(logInCookie != null) {
                logInCookie.setMaxAge(0);
                response.addCookie(logInCookie);
                userService.logout(loginUser.getUserId());
            }
            return "redirect:/";
        }
        return "redirect:/user/login";
    }










}


