<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>전자공시 &lt; 공시정보 &lt; IR &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>

</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main ir stock-info ir-dart" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>

                        <li class="data-item"><span class="item-text">공시정보</span></li>


                        <li class="data-item"><span class="item-text">전자공시(DART)</span></li>

                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">전자공시(DART)</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">전자공시 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">전자공시(DART)</h4>
                                        <div class="section-summary">
                                            <div class="btn-display design1 case3 align1">
                                                <div class="btn-area">
                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="https://www.sknetworks.co.kr/upload_skn/(SKN%EC%82%AC%EA%B7%9C-II-25)_%EA%B3%B5%EC%8B%9C%EC%A0%95%EB%B3%B4%EA%B4%80%EB%A6%AC%EA%B7%9C%EC%A0%95.pdf" download><span class="btn-text">공시정보관리규정</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <!-- Iframe 연동 -->
									<img src="/assets/images/ir/dart-iframe.png" alt="" style="width: 100%;" class="pc-only">
									<img src="/assets/images/ir/dart-iframe-mo.png" alt="" style="width: 100%;" class="mo-only">
									<!-- //Iframe 연동 -->
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="data-name blind">이 표는 전자공시 정보를 제공하며 번호, 보고서명, 제출인, 접수일자로 구성되어 있습니다.</em>
                                                        <div class="data-tr">
                                                            <span class="data-th">번호</span>
                                                            <span class="data-th">보고서명</span>
                                                            <span class="data-th">제출인</span>
                                                            <span class="data-th">접수일자</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">최대주주등소유주식변동신고서</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">주식등의대량보유상황보고서(일반)</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">의결권대리행사권유참고서류</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">주주총회소집공고</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">최대주주등소유주식변동신고서</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">주식등의대량보유상황보고서(일반)</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">의결권대리행사권유참고서류</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">주주총회소집공고</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">최대주주등소유주식변동신고서</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                        <div class="data-tr">
                                                            <span class="data-td num">10000</span>
                                                            <a href="javascript:void(0)" class="data-td title" target="_blank">주식등의대량보유상황보고서(일반)</a>
                                                            <span class="data-td name">SK네트웍스</span>
                                                            <span class="data-td date">2024.03.13</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 정보제공 : 금융감독원 DART</p>
                                    </div> -->
                                    <!-- 검색결과 없음 -->
                                    <div class="no-result-wrap">
                                        <em class="no-result-title">No event found.</em>
                                    </div>
                                    <!-- //검색결과 없음 -->
                                </div>
                                <div class="section-util">
                                    <div class="pagination design1 case1">
                                            <span class="page-util">
                                                <span class="util-item disabled">
                                                    <a class="btn icon case1 arrow-left2-bg" href="#"><span class="btn-text blind">이전</span></a>
                                                </span>
                                            </span>
                                        <span class="page-list">
                                                <a class="page-item current" href="#">1</a>
                                                <a class="page-item" href="#">2</a>
                                                <a class="page-item" href="#">3</a>
                                                <a class="page-item" href="#">4</a>
                                                <a class="page-item" href="#">5</a>
                                            </span>
                                        <span class="page-util">
                                                <span class="util-item">
                                                    <a class="btn icon case1 arrow-right2-bg" href="#"><span class="btn-text blind">다음</span></a>
                                                </span>
                                            </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- page-foot -->
    <footer id="footer">
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>