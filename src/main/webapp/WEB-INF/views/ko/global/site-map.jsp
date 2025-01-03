<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>사이트맵 &lt; SK Networks</title>
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
    <div class="main etc sitemap" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">사이트맵</span></li>


                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">사이트맵</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">사이트맵 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Company
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/company/summary" class="sitemap">기업 개요</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/company/ceo" class="sitemap">CEO인사말</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/company/history" class="sitemap">연혁</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/company/global-network" class="sitemap">글로벌 네트워크</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Business
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/business/summary" class="sitemap">사업 개요</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/global-investment" class="sitemap">글로벌투자</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/information-communication" class="sitemap">정보통신</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/hotel-and-resort" class="sitemap">워커힐 호텔앤리조트</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/sk-magic" class="sitemap">SK매직</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/skspeedmate" class="sitemap">SK스피드메이트</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/sk-eleclink" class="sitemap">SK일렉링크</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/glowide" class="sitemap">글로와이드</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/mintit" class="sitemap">민팃</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/business/en-core" class="sitemap">엔코아</a>
                                        </li>
                                        <!-- 히든처리 추후에 반영 -->
                                        <!-- <li class="sitemap-item">
                                            <a href="/business/phnyx-lab" class="sitemap">피닉스 랩</a>
                                        </li> -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Sustainability
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/sustainability/summary" class="sitemap">Sustainability 개요</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/sustainability/social-value/double-botoom-line" class="sitemap">사회적 가치</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/social-value/double-botoom-line" class="sitemap-depth2">Double Bottom Line</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/social-value/result" class="sitemap-depth2">사회적 가치 성과</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/sustainability/environment/management" class="sitemap">환경</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/environment/management" class="sitemap-depth2">환경경영</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/environment/climate-change" class="sitemap-depth2">기후변화</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/sustainability/society/human-rights-management" class="sitemap">사회</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/society/member-happiness" class="sitemap-depth2">구성원 행복</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/society/safety-and-health" class="sitemap-depth2">안전보건</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/society/stake-holder-happiness" class="sitemap-depth2">이해관계자 행복</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/society/information-protection-and-security" target="_self" class="sitemap-depth2">정보보호 및 보안</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/sustainability/governance/structure" target="_self" class="sitemap">거버넌스</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/governance/structure" target="_self" class="sitemap-depth2">지배구조</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/governance/ethical-management" target="_self" class="sitemap-depth2">윤리경영</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/governance/investment-management" target="_self" class="sitemap-depth2">투자관리</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/sustainability/reference-room/reports-and-policies" target="_self" class="sitemap">자료실</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/reference-room/reports-and-policies" target="_self" class="sitemap-depth2">보고서 및 정책</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/sustainability/reference-room/awards-and-certifications" target="_self" class="sitemap-depth2">인증</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            IR
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/ir/stock/stock-price-information" target="_self" class="sitemap">주식정보</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/stock/stock-price-information" target="_self" class="sitemap-depth2">주가정보</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/stock/shareholder-return" target="_self" class="sitemap-depth2">주주환원</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/ir/financial-information/key-financial-facts" target="_self" class="sitemap">재무정보</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/financial-information/key-financial-facts" target="_self" class="sitemap-depth2">주요재무현황</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/financial-information/audit-report" target="_self" class="sitemap-depth2">감사보고서</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/financial-information/credit-rating" target="_self" class="sitemap-depth2">신용등급</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/ir/ir-schedule" target="_self" class="sitemap">IR정보</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/ir-schedule" target="_self" class="sitemap-depth2">IR일정</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/ir-data" target="_self" class="sitemap-depth2">IR자료</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/ir/disclosure" target="_self" class="sitemap">공시정보</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/disclosure" target="_self" class="sitemap-depth2">전자공시</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/ir/announcement" target="_self" class="sitemap-depth2">전자공고</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            PR
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/pr/news-room" target="_self" class="sitemap">뉴스룸</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/pr/brand" target="_self" class="sitemap">브랜드</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Career
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/career/corporate-culture" target="_self" class="sitemap">기업문화</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/career/personnel-training" target="_self" class="sitemap">인재육성</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/career/evaluation-reward" target="_self" class="sitemap">평가/보상</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/career/job-introduction" target="_self" class="sitemap">채용정보</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.skcareers.com/" target="_blank" title="새창 열기">
                                                <span class="btn-text">채용사이트</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            문의 및 SNS
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/global/inquiry-form" target="_self" class="sitemap">문의·제안</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/global/privacy-policy" target="_self" class="sitemap">개인정보 처리방침</a>
                                        </li>
                                    </ul>
                                    <div class="sitemap-util btn-display design1 case3">
                                        <div class="btn-area">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 blog" href="https://blog.sknetworks.co.kr/?_ga=2.226815837.1728627398.1563336670-980524045.1557883331" target="_blank" title="새창 열기">
                                                <span class="btn-text">블로그</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 post" href="https://m.post.naver.com/my.nhn?memberNo=43457791" target="_blank" title="새창 열기">
                                                <span class="btn-text">포스트</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 facebook" href="https://www.facebook.com/official.sknetworks" target="_blank" title="새창 열기">
                                                <span class="btn-text">페이스북</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 youtube" href="https://www.youtube.com/channel/UCMQo25JGe40HNs6kK7LyphQ" target="_blank" title="새창 열기">
                                                <span class="btn-text">유튜브</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 insta" href="https://www.instagram.com/sknetworks_official/" target="_blank" title="새창 열기">
                                                <span class="btn-text">인스타그램</span>
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
    <!-- page-foot -->
    <footer id="footer">
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>