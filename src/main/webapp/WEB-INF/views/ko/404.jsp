<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">
    
<head>
    <meta charset="utf-8">
    <title>SK Networks 관리자</title>
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
        <div class="main error-page" id="main">
            <div class="main-inner">
                <em class="content-head">404</em>
                <div class="content-body">
                    <p class="para type1">죄송합니다.<br> 현재 찾을 수 없는 페이지를 요청하셨습니다.</p>
                    <p class="para type2">존재하지 않는 주소를 입력하셨거나,<br> 요청하신 페이지의 주소가 변경, 삭제되어<br class="mo-only"> 찾을 수 없습니다.</p>
                </div>
                <div class="content-util">
                    <div class="btn-display">
                        <a class="btn design3 case1 type1 color1 ar-icon-arrow-right2-bg" href="/"><span class="btn-text">메인으로 돌아가기</span></a>
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
