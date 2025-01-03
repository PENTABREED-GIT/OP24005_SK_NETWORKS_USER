<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>문의 접수 완료 &lt; 문의ㆍ제안 &lt; SK Networks</title>
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
    <div class="main etc inquiry-complete" id="main">
        <div class="main-inner">
            <div class="local design3">
                <div class="local-body">
                    <div class="content-head">문의 접수 완료 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case5 type3 align4">
                            <div class="section-wrap">
                                <div class="section-caption">
                                    <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks 로고">
                                </div>
                                <div class="section-head">
                                    <h3 class="section-name">문의 접수가 완료되었습니다.</h3>
                                </div>
                                <div class="section-body">
                                    <p class="para">문의 내용은 담당자 확인 후 입력해주신 E-mail로 정성껏 답변해 드리겠습니다.</p>
                                    <span class="note">아래 확인 버튼을 클릭 하시면, 메인 화면으로 이동합니다.</span>
                                </div>
                                <div class="section-util btn-display design1 align3">
                                    <div class="btn-area">
                                        <a class="btn design1 case1 type1 color1" href="/">
                                            <span class="btn-text">확인</span>
                                        </a>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>