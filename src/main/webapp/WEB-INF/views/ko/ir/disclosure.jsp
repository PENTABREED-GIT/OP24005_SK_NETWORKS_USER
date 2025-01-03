<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>전자공시 &lt; 공시정보 &lt; IR &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>

</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
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
									<iframe title="전자공시 정보" src="https://ir.gsifn.io/sknetworks/ir2_notices.html" allowfullscreen></iframe>
									<!-- //Iframe 연동 -->
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>