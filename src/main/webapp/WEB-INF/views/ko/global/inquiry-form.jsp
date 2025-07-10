<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>문의ㆍ제안 &lt; SK Networks</title>
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
    <div class="main etc inquiry-proposal" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">문의ㆍ제안</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">문의ㆍ제안</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">문의ㆍ제안 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 brand-inquiry">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">
                                            브랜드별 문의 페이지 바로가기
                                        </h4>
                                        <p class="section-summary">각 브랜드 고객센터를 통해 문의 주시면 보다 신속하고 정확한 답변을 받아보실 수 있습니다.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="board-list brand-inquiry">
                                        <li class="board-item walkerhill">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/customer/VOCForm.wh" target="_blank" title="새창 열기">
                                                    <span class="btn-text pc-only"><span class="blind">워커힐 호텔앤리조트</span>고객센터 바로가기</span>
                                                    <span class="btn-text mo-only">워커힐 호텔앤리조트</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item networksService">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.sknservice.com/contact.do?MENUNO=5" target="_blank" title="새창 열기">
                                                    <span class="btn-text pc-only"><span class="blind">SK네트웍스 서비스</span>고객센터 바로가기</span>
                                                    <span class="btn-text mo-only">SK네트웍스 서비스</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item intellix">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://service.skmagic.com/web/easy/easyMain.do?tabIndex=0#Back" target="_blank" title="새창 열기">
                                                    <span class="btn-text pc-only"><span class="blind">SK인텔릭스</span>고객센터 바로가기</span>
                                                    <span class="btn-text mo-only">SK인텔릭스</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item speedmate">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.speedmate.com/customer/FAQ" target="_blank" title="새창 열기">
                                                    <span class="btn-text pc-only"><span class="blind">스피드메이트</span>고객센터 바로가기</span>
                                                    <span class="btn-text mo-only">스피드메이트</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item mintit">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.mintit.co.kr/cscenter/faq" target="_blank" title="새창 열기">
                                                    <span class="btn-text pc-only"><span class="blind">민팃</span>고객센터 바로가기</span>
                                                    <span class="btn-text mo-only">민팃</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item encore">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.en-core.com/company/contactus" target="_blank" title="새창 열기">
                                                    <span class="btn-text pc-only"><span class="blind">엔코아</span>고객센터 바로가기</span>
                                                    <span class="btn-text mo-only">엔코아</span>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case3 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">
                                            사업제안, IR, ESG 등 <span class="text-bundle">기타 문의 바로가기</span>
                                        </h4>
                                        <p class="section-summary">사업제안, IR, ESG 등 기타 문의는 아래 배너를 통해 문의해주시길 바랍니다.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="banner design1 case1 type1">
                                        <div class="banner-wrap">
                                            <div class="banner-head">
                                                <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK네트웍스는 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/global/sk-inquiry-form">
                                                    <span class="btn-text">문의하기</span>
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