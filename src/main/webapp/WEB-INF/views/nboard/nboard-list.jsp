<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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


    <%@ include file="../include/static-head.jsp" %>

    <link rel="stylesheet" href="/css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="/css/search.css" rel="stylesheet" />

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
    <%@ include file="../include/navigation.jsp" %>
    <!-- [ navigation menu ] end -->


    <!-- [ Header ] start -->
    <%@ include file="../include/header.jsp" %>
    <!-- [ Header ] end -->


    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-content">
            <!-- [ breadcrumb ] start -->
            <%@ include file="../include/sitename.jsp" %>
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
                                    <a class="nav-link active text-uppercase neighbor" id="home-tab" data-toggle="tab"
                                        href="#" role="tab" aria-controls="home" aria-selected="true">우리동네</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase issue" id="profile-tab" data-toggle="tab" href="#"
                                        role="tab" aria-controls="profile" aria-selected="false">사건/사고</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase daily" id="contact-tab" data-toggle="tab" href="#"
                                        role="tab" aria-controls="contact" aria-selected="false">일상&자유</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase notice" id="contact-tab" data-toggle="tab"
                                        href="#" role="tab" aria-controls="contact" aria-selected="false">공지사항</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase etc" id="contact-tab" data-toggle="tab" href="#"
                                        role="tab" aria-controls="contact" aria-selected="false">기타</a>
                                </li>
                                <div class="search-icon">
                                    <li class="nav-item">
                                        <a href="#!" class="pop-search"><i class="feather icon-search"></i></a>
                                    </li>
                                </div>
                            </ul>

                            <ul class="navbar-nav mr-auto">
                                <div class="search-bar">
                                    <div class="input-select float-effect">
                                        <input type="hidden" name="amount" value="${pageMaker.criteria.amount}">
                                        <input type="hidden" name="category" value="${pageMaker.criteria.category}">
                                        <select data-trigger="" name="type">
                                            <option value="title" ${pageMaker.criteria.type=='title' ? 'selected' : ''
                                                }>제목
                                            </option>
                                            <option value="nickname" ${pageMaker.criteria.type=='nickname' ? 'selected'
                                                : '' }>작성자</option>
                                            <option value="content" ${pageMaker.criteria.type=='content' ? 'selected'
                                                : '' }>내용</option>
                                            <option value="titleContent" ${pageMaker.criteria.type=='titleContent'
                                                ? 'selected' : '' }>제목
                                                + 내용</option>
                                        </select>
                                    </div>
                                    <div class="float-effect">
                                        <input type="text" class="form-control" placeholder="Search hear"><br>
                                    </div>
                                    <div class="float-effect">
                                        <button class="btn  btn-primary" type="submit"><i
                                                class="feather icon-corner-down-right"></i></button>
                                    </div>
                                    <button type="button" class="close" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            </ul>


                            <!-- 검색창 -->
                            <div class="s003">
                                <form action="/nboard/list">
                                    <div class="inner-form">
                                        <div class="input-field first-wrap">

                                        </div>
                                        <div class="input-field second-wrap">
                                            <input id="search" type="text" name="keyword" placeholder="검색어를 입력하세요"
                                                value="${pageMaker.criteria.keyword}" />
                                        </div>
                                        <div class="input-field third-wrap">
                                            <button class="btn-search" type="submit">
                                                <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true"
                                                    data-prefix="fas" data-icon="search" role="img"
                                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                    <path fill="currentColor"
                                                        d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z">
                                                    </path>
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- 검색창 종료 -->
                        </div>




                        <div class="card-body table-border-style">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
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
                                                <td id="userNickName" value="${board.userNickName}">
                                                    ${board.userNickName}</td>
                                                <td id="title" value="${board.title}">
                                                    <a
                                                        href="/nboard/detail${pageMaker.makeParam(pageMaker.criteria.page)}&boardNo=${board.boardNo}&vf=true">${board.title}</a>
                                                    <c:if test="${board.newBoard}">
                                                        <span class="badge badge-pill badge-success">New</span>
                                                    </c:if>
                                                </td>
                                                <td id="content" value="${board.content}">${board.content}</td>
                                                <td id="views" value="${board.views}">${board.views}</td>
                                                <td id="recommend" value="${board.recommend}">${board.recommend}</td>
                                                <td id="postDate" value="${board.postDate}">
                                                    <fmt:formatDate value="${board.postDate}"
                                                        pattern="yyyy년 MM월 dd일 HH:mm:ss" />
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                                <!-- 페이지 영역 -->
                                <ul class="pagination">

                                    <c:if test="${pageMaker.prev}">

                                        <li class="page-item">
                                            <a class="page-link"
                                                href="/nboard/list${pageMaker.makeParam(pageMaker.beginPage-1)}"
                                                aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                    </c:if>

                                    <!-- li*5>a{[$]} -->
                                    <c:forEach var="i" begin="${pageMaker.beginPage}" end="${pageMaker.endPage}"
                                        step="1">

                                        <li class="page-item"><a class="page-link"
                                                href="/nboard/list${pageMaker.makeParam(i)}">${i}</a></li>
                                        <!-- makeParam은 메서드이기 때문에 ()를 붙여서 call 해줌 -->
                                    </c:forEach>

                                    <c:if test="${pageMaker.next}">
                                        <li class="page-item">
                                            <a class="page-link"
                                                href="/nboard/list${pageMaker.makeParam(pageMaker.endPage+1)}"
                                                aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </c:if>
                                </ul>
                                <!-- 페이지 영역 종료 -->
                            </div>

                        </div>
                        <!-- 게시글 작성 버튼 -->
                        <div class="fixed-button active">
                            <a href="/nboard/register" class="btn btn-md btn-primary">
                                <i class="fa fa-plus-circle" aria-hidden="true"></i> 글 작성</a>
                        </div>

                    </div>
                </div>
                <!-- [ stiped-table ] end -->



            </div>
            <!-- [ Main Content ] end -->
        </div>
    </div>



    <script src="/js/choices.js"></script>
    <script>
        const choices = new Choices('[data-trigger]', {
            searchEnabled: false,
            itemSelectText: '',
</script>
    <!-- <script src="/js/nboard-category.js"></script> -->
    <script>
        $(function () {
            console.log("content-list script 시작");
            $('.neighbor').on('click', e => {
                console.log("neighbor 클릭이벤트!");
                location.href =
                    "/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'NEIGHBOR')}";
            })
            $('.issue').on('click', e => {
                console.log("issue 클릭이벤트!");
                console.log(e.target);
                location.href =
                    "/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'ISSUE')}";
            });
            $('.daily').on('click', e => {
                console.log("daily 클릭이벤트!");
                console.log(e.target);
                location.href =
                    "/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'DAILYLIFE')}";
            });
            $('.notice').on('click', e => {
                console.log("notice 클릭이벤트!");
                console.log(e.target);
                location.href =
                    "/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'NOTICE')}";
            });
            $('.etc').on('click', e => {
                console.log("etc 클릭이벤트!");
                console.log(e.target);
                location.href =
                    "/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'ETC')}";
            });
        });
    
</body>

</html>