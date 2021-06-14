<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- [ Header ] start -->
<header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue">

    <div class="m-header">
        <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
        <a href="/" class="b-brand">
            <img src="/images/logo.png" alt="로고이미지" class="logo">
            <img src="/images/logo-icon.png" alt="로고이미지" class="logo-thumb">
        </a>
        <a href="#!" class="mob-toggler">
            <i class="feather icon-more-vertical"></i>
        </a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <!-- <a href="#!" class="pop-search"><i class="feather icon-search"></i></a> -->
                <div class="search-bar">
                    <input type="text" class="form-control border-0 shadow-none" placeholder="Search hear">
                    <button type="button" class="close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li>
                <div class="dropdown drp-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="feather icon-user"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right profile-notification">
                        <div class="pro-head">
                            <img src="/images/user/user_basic.png" class="img-radius" alt="User-Profile-Image">
                            <span>${loginUser.userNickname}님 (#${loginUser.userId})</span>
                        </div>
                        <ul class="pro-body">
                            <li><a href="/user/profile" class="dropdown-item"><i class="feather icon-user"></i>
                                    프로필보기</a></li>
                            <li><a href="/chatting" class="dropdown-item"><i class="feather icon-message-circle"></i>
                                    채팅하기</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <li>
                <c:if test="${loginUser == null}">
                    <a class="login" href="/user/sign-in"><i class="icon feather icon-log-in"></i> 로그인</a>
                </c:if>

                <c:if test="${loginUser != null}">
                    <a class="login" href="/user/logout"><i class="icon feather icon-log-in"></i> 로그아웃</a>
                </c:if>
            </li>

        </ul>
    </div>
</header>
<!-- [ Header ] end -->