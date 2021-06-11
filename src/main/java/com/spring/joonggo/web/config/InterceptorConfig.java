package com.spring.joonggo.web.config;

import com.spring.joonggo.web.interceptor.AuthInterceptor;
import com.spring.joonggo.web.interceptor.AutoLoginInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    @Autowired //권한 검증 인터셉터 주입
    private AuthInterceptor authInterceptor;
    
    @Autowired //자동로그인 검증 인터셉터 주입
    private AutoLoginInterceptor autoLoginInterceptor;

    //인터셉터 적용 설정 메서드ㅡ
    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(authInterceptor)
                .addPathPatterns("/")
                .excludePathPatterns("/","/"); //비회원에게 제외할 페이지 지정

        registry.addInterceptor(autoLoginInterceptor).addPathPatterns("/"); //자동로그인 회원 모든 페이지 허용

    }
}
