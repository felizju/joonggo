package com.spring.joonggo.web.user.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@ToString
public class LoginInfo {

    private String userId;
    private String userPw;
    private boolean autoLogin;
}
