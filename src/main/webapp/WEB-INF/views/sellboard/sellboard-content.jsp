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
            <!-- [ sitename ] start -->
            <%@ include file="../include/sitename.jsp" %>
            <!-- [ sitename ] end -->

            <!-- [ Main Content ] start -->
            <div class="row">
                <!-- [ form-element ] start -->
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>중고거래 게시판</h5>
                        </div>
                        <div class="card-body">
                            <h5>글 정보</h5>
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                    <form>
                                        <div class="form-group" id="boardNo" value="${nBoard.boardNo}">
                                            <label for="exampleInputNo">글번호</label>
                                            <p class="form-control">1</p>
                                        </div>
                                        <div class="form-group" id="views" value="${nBoard.views}">
                                            <label for="exampleInputUserId">추천수</label>
                                            <p class="form-control">2</p>
                                        </div>
                                        <div class="form-group" id="postDate" value="${nBoard.postDate}">
                                            <label>작성시간</label>
                                            <p class="form-control">2021/06/13</p>
                                        </div>
                                        <div class="form-group" id="category" value="${nBoard.category}">
                                            <label for="exampleFormControlSelect1">카테고리</label>
                                            <p class="form-control">의류</p>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-6">
                                    <form>
                                        <div class="form-group" id="userNickName" value="${nBoard.userNickName}">
                                            <label for="exampleInputNo">닉네임</label>
                                            <p class="form-control">도우너</p>
                                        </div>
                                        <div class="form-group" id="recommend" value="${nBoard.recommend}">
                                            <label for="exampleInputUserId">채팅수</label>
                                            <p class="form-control">3</p>
                                        </div>
                                        <div class="form-group" id="recommend" value="${nBoard.recommend}">
                                            <label for="exampleInputUserId">판매상태</label>
                                            <p class="form-control">예약 중</p>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputTitle">지역</label>
                                            <p class="form-control">봉명동</p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <h5 class="mt-5">글 내용</h5>
                            <hr>
                            <form>
                                <div class="form-group" id="title" value="${nBoard.title}">
                                    <label for="inputTitle">제목</label>
                                    <p class="form-control">제목제목제목</p>
                                </div>

                                <div class="form-group">
                                    <label for="inputTitle">가격</label>
                                    <p class="form-control">250,000</p>
                                </div>
                                <div class="form-group" id="content" value="${nBoard.content}">
                                    <label for="inputContent">내용</label>
                                    <p class="form-control">내용내용내용</p>
                                </div>
                                <!-- 첨부파일 영역 -->
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="validatedCustomFile" required>
                                    <label class="custom-file-label" for="validatedCustomFile">파일 업로드
                                        비활성화하기!!!!!!</label>
                                </div><br><br>
                                <button type="button" class="btn  btn-primary">수정하기</button>
                                <button type="button" class="btn  btn-success">삭제하기</button>
                                <button type="button" class="btn  btn-secondary">목록으로 돌아가기</button>
                            </form><br>

                        </div>
                    </div>
                </div>
                <!-- [ form-element ] end -->
            </div>
        </div>
        <!-- [ Main Content ] end -->
    </div>

</body>

</html>