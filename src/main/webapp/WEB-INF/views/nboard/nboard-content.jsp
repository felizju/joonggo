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
                            <h5>동네생활 게시판</h5>
                        </div>
                        <div class="card-body">
                            <h5>글 정보</h5>
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                    <form>
                                        <div class="form-group" id="boardNo" value="${nBoard.boardNo}">
                                            <label for="exampleInputNo">글번호</label>
                                            <p class="form-control">${nBoard.boardNo}</p>
                                        </div>
                                        <div class="form-group" id="views" value="${nBoard.views}">
                                            <label for="exampleInputUserId">조회수</label>
                                            <p class="form-control">${nBoard.views}</p>
                                        </div>
                                        <div class="form-group" id="postDate" value="${nBoard.postDate}">
                                            <label>작성시간</label>
                                            <p class="form-control">
                                                <fmt:formatDate value="${nBoard.postDate}"
                                                    pattern="yyyy년 MM월 dd일 HH:mm:ss" />
                                            </p>
                                            <!-- 안나옴 -->
                                        </div>

                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form>
                                        <div class="form-group" id="userNickName" value="${nBoard.userNickName}">
                                            <label for="exampleInputNo">닉네임</label>
                                            <p class="form-control">${nBoard.userNickName}</p>
                                        </div>
                                        <div class="form-group" id="recommend" value="${nBoard.recommend}">
                                            <label for="exampleInputUserId">추천수</label>
                                            <p class="form-control">${nBoard.recommend}</p>
                                        </div>
                                        <div class="form-group" id="category" value="${nBoard.category}">
                                            <label for="exampleFormControlSelect1">카테고리</label>
                                            <p class="form-control">${nBoard.category}</p>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <h5 class="mt-5">글 내용</h5>
                            <hr>
                            <form>
                                <div class="form-group" id="title" value="${nBoard.title}">
                                    <label for="inputTitle">제목</label>
                                    <p class="form-control">${nBoard.title}</p>

                                </div>
                                <div class="form-group" id="content" value="${nBoard.content}">
                                    <label for="inputContent">내용</label>
                                    <p class="form-control">${nBoard.content}</p>
                                </div>
                                <!-- 첨부파일 영역 -->
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="validatedCustomFile" required>
                                    <label class="custom-file-label" for="validatedCustomFile">파일 업로드
                                        비활성화하기!!!!!!</label>
                                </div><br><br>
                                <%--
                                <c:if test="${nBoard.userId == loginUser.userId || loginUser.auth == 'ADMIN'}"></c:if>
                                --%>
                                <button type="button"
                                    onclick="location.href='/nboard/modify?boardNo=?{nBOard.boardNo}&vf=false'"
                                    class="btn  btn-primary">수정하기</button>
                                <%--
                                </c:if>
                                <c:if test="${nBoard.userId == loginUser.userId || loginUser.auth == 'ADMIN'}">
                                    --%>
                                <button type="button" onclick="location.href='/nboard/delete?boardNo=${nBoard.boardNo}'"
                                    class="btn  btn-success">삭제하기</button>
                                <%--
                                    </c:if>
                                    --%>
                                <!-- <button type="button" class="btn disabled btn-secondary">목록으로 돌아가기</button> -->
                                <!-- <button type="button" onclick="location.href='nboard-list.html' " class="btn disabled btn-secondary">목록으로 돌아가기</button> -->
                                <button type="button"
                                    onclick="location.href='/nboard/list?page=${cri.page}&type=${cri.type}&keyword=${cri.keyword}&amount=${cri.amount}&category=${cri.category}' "
                                    class="btn  btn-secondary">목록으로 돌아가기</button>
                            </form><br>

                        </div>
                    </div>
                </div>
                <!-- [ form-element ] end -->

                <!-- [ reply ] start -->
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>댓글목록</h5>
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="form-group">
                                            <label for="newReplyText" hidden>댓글 내용</label>
                                            <textarea rows="3" id="newReplyText" name="replyText" class="form-control"
                                                placeholder="댓글을 입력해주세요."></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="newReplyWriter" hidden>댓글 작성자</label>
                                            <button id="replyAddBtn" 
                                                class="btn  btn-primary btn-lg">등록하기</button>
                                        </div>
                                    </div>
                                </div>
                            </form>

                            <br>
                            <table class="table table-hover">
                                <tbody>
                                    <tr class="table-active">
                                        <th scope="col">닉네임</th>
                                        <th scope="col">댓글내용</th>
                                        <th scope="col">작성일자</th>
                                        <th scope="col">수정</th>
                                        <th scope="col">삭제</th>
                                    </tr>
                                    <c:forEach var="reply" items="${replyList}">
                                        <tr class="reply-list" value="${reply.replyNo}">
                                            <td>닉네임</td>
                                            <td>댓글내용</td>
                                            <td>작성일자</td>
                                            <td>
                                                <a class="modi" href="#" value="${reply.replyNo}">
                                                    <div class="modify">
                                                        <span class="lnr lnr-undo"></span>
                                                    </div>
                                                </a>
                                            <td>
                                                <a href="#">
                                                    <div class="remove">
                                                        <span class="lnr lnr-cross-circle"></span>
                                                    </div>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- [ reply ] end -->
                    
                </div>
            </div>
            <!-- [ Main Content ] end -->
        </div>
    </div>

</body>

</html>