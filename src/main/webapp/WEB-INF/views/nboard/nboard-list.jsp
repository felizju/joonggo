<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>JOONGGO MARKET</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />

    <!-- Favicon icon -->
    <link rel="icon" href="/images/market_favicon.ico" type="image/x-icon">

    <!-- vendor css -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- linear icon css -->
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">

    <!-- Required Js -->
    <script src="/js/vendor-all.min.js" defer></script>
    <script src="/js/plugins/bootstrap.min.js" defer></script>
    <script src="/js/ripple.js" defer></script>
    <script src="/js/pcoded.min.js" defer></script>

</head>

<body class="loader-fill">
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class=""></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->


    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar menu-light">
        <div class="navbar-wrapper">
            <div class="navbar-content scroll-div">
                <div class="">
                    <div class="main-menu-header">
                        <img class="img-radius" src="/images/user/user_basic.png"
                            alt="User-Profile-Image">
                        <div class="user-details">
                            <div id="more-details">둘리</div>
                        </div>
                    </div>
                </div>
                <ul class="nav pcoded-inner-navbar">
                    <li class="nav-item pcoded-menu-caption">
                        <label>나의 당근</label>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link "><span class="pcoded-micon">
                                <i class="feather icon-home"></i></span><span class="pcoded-mtext">홈</span></a>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>채팅</label>
                    </li>
                    <li class="nav-item">
                        <a href="form_elements.html" class="nav-link "><span class="pcoded-micon">
                                <i class="feather icon-message-circle"></i></span><span
                                class="pcoded-mtext">채팅하기</span></a>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>동네생활</label>
                    </li>
                    <li class="nav-item"><a href="sample-page.html" class="nav-link "><span class="pcoded-micon">
                                <i class="feather icon-layout"></i></span><span class="pcoded-mtext">동네생활
                                게시판</span></a></li>

                    <li class="nav-item pcoded-menu-caption">
                        <label>마이페이지</label>
                    </li>
                    <li class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link has-ripple"><span class="pcoded-micon">
                                <i class="feather icon-lock"></i></span>
                            <span class="pcoded-mtext">프로필</span></a>
                        <ul class="pcoded-submenu">
                            <li><a href="#" target="_blank">구매내역</a></li> <!-- 구매내역 상세페이지 만들기-->
                            <li><a href="#" target="_blank">판매내역</a></li> <!-- 판매내역 상세페이지 만들기-->
                            <li><a href="#" target="_blank">관심상품</a></li> <!-- 관심상품 상세페이지 만들기-->
                            <li><a href="#" target="_blank">프로필</a></li> <!-- 프로필 상세페이지 만들기 (정보수정)-->
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->


    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
            <a href="#!" class="b-brand">
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
                                        <img class="img-radius" src="/images/user/memoji1.png"
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
                                        <img class="img-radius" src="/images/user/memoji2.png"
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
                                        <img class="img-radius" src="/images/user/memoji1.png"
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
                                        <img class="img-radius" src="/images/user/memoji2.png"
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
                                <img src="/images/user/user_basic.png" class="img-radius"
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




    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-content">
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <div class="page-block">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <div class="page-header-title">
                                <h2 class="m-b-10" id="home">JOONGGO MARKET</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [ breadcrumb ] end -->




            <!-- [ Main Content ] start -->
            <div class="row">
                <!-- [ stiped-table ] start -->
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>동네생활 게시판</h5>
                        </div>
                        <div class="card-body">
                            <!-- 동네생활 카테고리 -->
                            <ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active text-uppercase" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">NEIGHBOR</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">ISSUE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">DAILYLIFE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">NOTICE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">ETC</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body table-border-style">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>아이디</th>
                                            <th>닉네임</th>
                                            <th>제목</th>
                                            <th>내용</th>
                                            <th>조회수</th>
                                            <th>추천수</th>
                                            <th>작성일자</th>
                                        </tr>
                                    </thead>
                                    
                                    <!-- 반복문 -->
                                    <tbody>
                                        <c:forEach var="board" items="${nBoardList}">
                                            <tr>
                                                <td id="boardNo" value="${board.boardNo}">${board.boardNo}</td>
                                                <td id="userId" value="${board.userId}">${board.userId}</td>
                                                <td id="userNickName" value="${board.userNickName}">${board.userNickName}</td>
                                                <td id="title" value="${board.title}">
                                                    <a href="/nboard/detail${pageMaker.makeParam(pageMaker.criteria.page)}&boardNo=${board.boardNo}&vf=true">${board.title}</a>

                                                </td>
                                                <td id="content" value="${board.content}">${board.content}</td>
                                                <td id="views" value="${board.views}">${board.views}</td>
                                                <td id="recommend" value="${board.recommend}">${board.recommend}</td>
                                                <td id="postDate" value="${board.postDate}">${board.postDate}</td>
                                                
                                            </tr>
                                        </c:forEach>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>@mdo</td>
                                            <td>@mdo</td>
                                            <td>@mdo</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                            <td>@fat</td>
                                            <td>@fat</td>
                                            <td>@fat</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="button" 
                            onclick="location.href='/nboard/register' "
                            class="btn  btn-primary">글쓰기</button>
                            <!-- <button type="button" class="btn  btn-success">Success</button> -->
                        </div>
                    </div>
                </div>
                <!-- [ stiped-table ] end -->
            </div>
            <!-- [ Main Content ] end -->
        </div>
    </section>

</body>

</html>