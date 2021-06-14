<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- [ Header ] start -->
<header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue">
    <div class="m-header">
        <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
        <a href="#!" class="b-brand">
            <img src="/src/main/resources/static/images/logo.png" alt="로고이미지" class="logo">
            <img src="/src/main/resources/static/images/logo-icon.png" alt="로고이미지" class="logo-thumb">
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
                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
                            class="icon feather icon-bell"></i></a>
                    <div class="dropdown-menu dropdown-menu-right notification">
                        <div class="noti-head">
                            <h6 class="d-inline-block m-b-0">알림</h6>
                            <div class="float-right">
                                <a href="#!" class="m-r-10">모두 읽음으로 표시</a>
                            </div>
                        </div>
                        <ul class="noti-body">
                            <li class="n-title">
                                <p class="m-b-0">새로운 알림</p>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius" src="/src/main/resources/static/images/user/memoji1.png"
                                        alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>John Doe</strong><span class="n-time text-muted"><i
                                                    class="icon feather icon-clock m-r-10"></i>5분 전</span></p>
                                        <p>새로운 글 등록</p>
                                    </div>
                                </div>
                            </li>
                            <li class="n-title">
                                <p class="m-b-0">최근 알림</p>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius" src="/src/main/resources/static/images/user/memoji2.png"
                                        alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>둘리</strong><span class="n-time text-muted"><i
                                                    class="icon feather icon-clock m-r-10"></i>10분 전</span></p>
                                        <p>새로운 채팅 1건</p>
                                    </div>
                                </div>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius" src="/src/main/resources/static/images/user/memoji1.png"
                                        alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>고길동</strong><span class="n-time text-muted"><i
                                                    class="icon feather icon-clock m-r-10"></i>12분 전</span></p>
                                        <p>내 글 좋아요</p>
                                    </div>
                                </div>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius" src="/src/main/resources/static/images/user/memoji2.png"
                                        alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>하이</strong><span class="n-time text-muted"><i
                                                    class="icon feather icon-clock m-r-10"></i>30분 전</span></p>
                                        <p>새로운 채팅 1건</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="noti-footer">
                            <a href="#!">더보기</a>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="dropdown drp-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="feather icon-user"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right profile-notification">
                        <div class="pro-head">
                            <img src="/src/main/resources/static/images/user/user_basic.png" class="img-radius"
                                alt="User-Profile-Image">
                            <span>John Doe</span>
                            <a href="auth-signin.html" class="dud-logout" title="Logout">
                                <i class="feather icon-log-out"></i>
                            </a>
                        </div>
                        <ul class="pro-body">
                            <li><a href="user-profile.html" class="dropdown-item"><i class="feather icon-user"></i>
                                    Profile</a></li>
                            <li><a href="email_inbox.html" class="dropdown-item"><i class="feather icon-mail"></i>
                                    My Messages</a></li>
                            <li><a href="auth-signin.html" class="dropdown-item"><i class="feather icon-lock"></i>
                                    Lock Screen</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</header>
<!-- [ Header ] end -->