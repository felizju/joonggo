package com.spring.joonggo.web.user.service;

import com.spring.joonggo.web.user.domain.ModifyUser;
import com.spring.joonggo.web.user.domain.User;
import com.spring.joonggo.web.user.repository.UserMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
@RequiredArgsConstructor
public class UserService {

    private final UserMapper userMapper;

    //회원 가입 기능
    public void registerAccount(User user) {
        String userPw = user.getUserPw();
        user.setUserPw(new BCryptPasswordEncoder().encode(userPw)); // 비밀번호 암호화

        userMapper.registerAccount(user);
    }


    //아이디, 이메일, 닉네임 중복체크
    public boolean isDuplicate(String type, String keyword){
        Map<String, Object> checkDataMap = new HashMap<>();
        checkDataMap.put("type", type);
        checkDataMap.put("keyword", keyword);

        return userMapper.isDuplicate(checkDataMap) == 1; // 중복이면 true
    }


    //회원 정보 조회 기능
    public User getUser(String userId) {
        return userMapper.getUser(userId);
    }

    //전체 회원 조회
    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }

    //회원 탈퇴 기능
    public void deleteAccount(String userId) {
        userMapper.deleteAccount(userId);
    }

    //회원 정보 수정
    public void modifyUserInfo(ModifyUser modifyUser) {
        userMapper.modifyUserInfo(modifyUser);
    }


    // 회원 정보 조회 기능

    // 로그인 처리 기능


    //자동로그인 관련 기능

    //세션 아이디값을 통한 회원정보 조회기
}
