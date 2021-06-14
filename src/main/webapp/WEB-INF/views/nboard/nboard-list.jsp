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
                                        href="#home" role="tab" aria-controls="home" aria-selected="true">NEIGHBOR</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="profile-tab" data-toggle="tab"
                                        href="#profile" role="tab" aria-controls="profile"
                                        aria-selected="false">ISSUE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab"
                                        href="#contact" role="tab" aria-controls="contact"
                                        aria-selected="false">DAILYLIFE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab"
                                        href="#contact" role="tab" aria-controls="contact"
                                        aria-selected="false">NOTICE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab"
                                        href="#contact" role="tab" aria-controls="contact" aria-selected="false">ETC</a>
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
    </div>

</body>

</html>