<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>JOONGGO MARKET</title>

    <style>
        .pagination {
            justify-content: center;
            font-size: 15px;
        }
    </style>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />

    <%@ include file="../include/static-head.jsp" %>
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
                                    <a class="nav-link active text-uppercase" id="home-tab" data-toggle="tab"
                                        href="/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'NEIGHBOR')}"
                                        role="tab" aria-controls="home" aria-selected="true">우리동네</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="profile-tab" data-toggle="tab"
                                        href="/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'ISSUE')}"
                                        role="tab" aria-controls="profile" aria-selected="false">사건/사고</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab"
                                        href="/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'DAILYLIFE')}"
                                        role="tab" aria-controls="contact" aria-selected="false">일상&자유</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab"
                                        href="/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'NOTICE')}"
                                        role="tab" aria-controls="contact" aria-selected="false">공지사항</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab"
                                        href="/nboard/list${pageMaker.makeParam(pageMaker.criteria.page, pageMaker.criteria.amount, 'ETC')}"
                                        role="tab" aria-controls="contact" aria-selected="false">기타</a>
                                </li>
                            </ul>
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

    <script>
        // 카테고리 변경 함수
        function changeCategory() {

        }

        (function () {

        }());
    </script>

</body>

</html>