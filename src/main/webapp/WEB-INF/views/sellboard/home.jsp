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
                <!-- project ,team member start -->
                <div class="col-xl-6 col-md-12">
                    <div class="card table-card">
                        <div class="card-header">
                            <h5>최신글</h5>
                            <div class="card-header-right">
                                <div class="btn-group card-option">
                                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                        <i class="feather icon-more-horizontal"></i>
                                    </button>
                                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                        <li class="dropdown-item full-card"><a href="#!">
                                                <span><i class="feather icon-maximize"></i> maximize</span>
                                                <span style="display:none"><i class="feather icon-minimize"></i>
                                                    Restore</span></a></li>
                                        <li class="dropdown-item minimize-card"><a href="#!">
                                                <span><i class="feather icon-minus"></i> collapse</span>
                                                <span style="display:none"><i class="feather icon-plus"></i>
                                                    expand</span></a></li>
                                        <li class="dropdown-item reload-card"><a href="#!"><i
                                                    class="feather icon-refresh-cw"></i> reload</a></li>
                                        <li class="dropdown-item close-card"><a href="#!"><i
                                                    class="feather icon-trash"></i> remove</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table table-hover mb-0">
                                    <thead>
                                        <tr>
                                            <th>NO</th>
                                            <th>IMAGE</th>
                                            <th>TITLE</th>
                                            <th>PRICE</th>
                                            <th>USER NAME</th>
                                            <th>DATE</th>
                                            <th>REGION</th>
                                            <th>LIKES</th>
                                            <th>CHAT</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <div class="d-inline-block product">
                                                    <img src="/src/main/resources/static/images/product/apple.jpg"
                                                        alt="user image"
                                                        class="img-radius wid-80 hei-70 align-top m-r-15">
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <h6>애플워치 판매합니다.</h6>
                                                </div>
                                            </td>
                                            <td>100,000</td>
                                            <td>
                                                <div class="d-inline-block align-middle">
                                                    도우너
                                                </div>
                                            </td>
                                            <td>2021/06/10</td>
                                            <td>봉명동</td>
                                            <td>
                                                <span class="lnr lnr-heart"> 1</span>
                                            </td>
                                            <td>
                                                <span class="lnr lnr-bubble"> 2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>
                                                <div class="d-inline-block product">
                                                    <img src="/src/main/resources/static/images/product/notebook.jpg"
                                                        alt="user image"
                                                        class="img-radius wid-80 hei-70 align-top m-r-15">
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <h6>갤럭시 노트북 판매합니다.</h6>
                                                </div>
                                            </td>
                                            <td>1650,000</td>
                                            <td>
                                                <div class="d-inline-block align-middle">
                                                    고길동
                                                </div>
                                            </td>
                                            <td>2021/06/09</td>
                                            <td>도룡동</td>
                                            <td>
                                                <span class="lnr lnr-heart"> 1</span>
                                            </td>
                                            <td>
                                                <span class="lnr lnr-bubble"> 2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>
                                                <div class="d-inline-block product">
                                                    <img src="/src/main/resources/static/images/product/nintendo.jpg"
                                                        alt="user image"
                                                        class="img-radius wid-80 hei-70 align-top m-r-15">
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <h6>닌텐도 판매합니다.</h6>
                                                </div>
                                            </td>
                                            <td>500,000</td>
                                            <td>
                                                <div class="d-inline-block align-middle">
                                                    노홍철
                                                </div>
                                            </td>
                                            <td>2021/06/08</td>
                                            <td>둔산동</td>
                                            <td>
                                                <span class="lnr lnr-heart"> 1</span>
                                            </td>
                                            <td>
                                                <span class="lnr lnr-bubble"> 2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>
                                                <div class="d-inline-block product">
                                                    <img src="/src/main/resources/static/images/product/sofa.jpg"
                                                        alt="user image"
                                                        class="img-radius wid-80 hei-70 align-top m-r-15">
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <h6>소파 판매합니다.</h6>
                                                </div>
                                            </td>
                                            <td>200,000</td>
                                            <td>
                                                <div class="d-inline-block align-middle">
                                                    둘리
                                                </div>
                                            </td>
                                            <td>2021/06/07</td>
                                            <td>용문동</td>
                                            <td>
                                                <span class="lnr lnr-heart"> 3</span>
                                            </td>
                                            <td>
                                                <span class="lnr lnr-bubble"> 1</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>
                                                <div class="d-inline-block product">
                                                    <img src="/src/main/resources/static/images/product/samsung.jpg"
                                                        alt="user image"
                                                        class="img-radius wid-80 hei-70 align-top m-r-15">
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <h6>갤럭시 판매합니다.</h6>
                                                </div>
                                            </td>
                                            <td>800,000</td>
                                            <td>
                                                <div class="d-inline-block align-middle">
                                                    하이
                                                </div>
                                            </td>
                                            <td>2021/06/07</td>
                                            <td>둔산동</td>
                                            <td>
                                                <span class="lnr lnr-heart"> 3</span>
                                            </td>
                                            <td>
                                                <span class="lnr lnr-bubble"> 1</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- [ Main Content ] end -->
        </div>
    </div>

</body>

</html>