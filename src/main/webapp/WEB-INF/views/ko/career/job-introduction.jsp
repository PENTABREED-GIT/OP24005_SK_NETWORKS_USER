<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>채용정보 &lt; Career &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            Tab();

            // URL 문자열 추출 (아코디언 URL 생성)
            // 1. 현재 페이지 URL의 문자열 부분을 반환 후 ?를 제외한 나머지 쿼리 문자열을 추출(?tab=scrollTab1)
            const qr = window.location.search.substring(1, window.location.search.length)

            // 2. = 기준으로 쿼리 문자열을 나눔. [1]: 두 번째 값 가져옴 (scrollTab1)
            const tabId = (qr.split('='))[1]

            console.log("tabID : " + tabId);

            // 3. ID로 가진 HTML 요소를 DOM에서 가져옴.
            const scrollTab = document.getElementById(tabId);

            // 4. 자동으로 스크롤
            if(tabId != null){
                scrollTab.scrollIntoView()

                // 5. 해당 버튼을 클릭 (아코디언이 열린 상태)
                // scrollTab.querySelector('button').click()
                scrollTab.click();
            }
        });
    </script>
    <script>
        // [25.03.27] 탭 클릭 시, 탭별로 url 변경
        function tabClickEvent(e){
            let tabId = e.target.id;
            let url = window.location.href.split('?')[0];
            if(url == null){
                url = window.location.href;
            }
            let newUrl = url + `?tabId=` + tabId;
            history.pushState(null, null, newUrl);
        }
    </script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main career recruit" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">Career</span></li>
                        <li class="data-item"><span class="item-text">채용정보</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">채용정보</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">채용정보 페이지</div>
                    <div class="content-body">
                        <div class="section design1 type1 rec-info">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="tab-display design1 case1 type1">
                                        <div class="swiper tab-wrap">
                                            <ul class="swiper-wrapper tab-list" role="tablist">
                                                <li id="tab1" class="swiper-slide tab-item recruit-tab-item" aria-controls="tab-panel1">
                                                    <button role="tab" class="tab-text" id="job-description" onclick="tabClickEvent(event)">직무소개</button>
                                                </li>
                                                <li id="tab2" class="swiper-slide tab-item recruit-tab-item" aria-controls="tab-panel2">
                                                    <button role="tab" class="tab-text" id="recruitment-information" onclick="tabClickEvent(event)">채용절차</button>
                                                </li>
                                                <li id="tab3" class="swiper-slide recruit-tab-item">
                                                    <a href="https://www.skcareers.com" class="tab-text" target="_blank" title="새창 열기">채용공고</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="panel-display design1 case1">
                                        <div class="panel-list">
                                            <div id="tab-panel1" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">직무소개</p>
                                                                        </div>
                                                                        <div class="item-body bg"></div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="board-list design1 case1 type1">
                                                            <div class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-head">
                                                                        <p class="board-subject">정보통신</p>
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">휴대폰 단말기 도매(ICT Device 포함), 제조사 및 유통업체 관리 지원</li>
                                                                                <li class="data-item">온라인 직영 채널 기획 및 운영</li>
                                                                                <li class="data-item">물류 운영 Process 기획/설계, 비용 분석</li>
                                                                                <li class="data-item">중고 ICT Device 유통, Recycle 신규 서비스 기획</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="board-util">
                                                                        <div class="btn-display align1">
                                                                            <div class="btn-area">
                                                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/business/information-communication" target="_self"><span class="btn-text">정보통신 소개 바로가기</span></a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-head">
                                                                        <p class="board-subject">경영지원</p>
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">전사 경영전략 수립, 투자 검토, 손익관리</li>
                                                                                <li class="data-item">재무/금융, 회계, 세무</li>
                                                                                <li class="data-item">HR, 구매, 홍보, 법무, SHE</li>
                                                                                <li class="data-item">기업문화, SV(Social Value)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-head">
                                                                        <p class="board-subject">워커힐 호텔앤리조트</p>
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Marketing, Promotion 기획</li>
                                                                                <li class="data-item">호텔 Biz. 업그레이드 및 BM 혁신 기획 및 운영</li>
                                                                                <li class="data-item">외부 사업 등 신규 Biz. 개발</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="board-util">
                                                                        <div class="btn-display align1">
                                                                            <div class="btn-area">
                                                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/business/hotel-and-resort"><span class="btn-text">워커힐 호텔앤리조트 소개 바로가기</span></a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="tab-panel2" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">단계별 전형절차</p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="panel-body">
                                                        <ul class="board-list design11 case1 type1">
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/appl.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">입사지원</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/doc.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">서류전형</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/write.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">필기전형</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/inter.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">면접전형</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/audit.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">신체검사</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/accept.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">최종합격</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">입사지원</p>
                                                                            <p class="para">
                                                                                SK Talent Portal (<a href="https://www.skcareers.com/" target="_blank" title="새창 열기"><u>www.skcareers.com</u></a>)을 통해서 On-line 입사지원을 받고 있습니다.
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">서류전형</p>
                                                                            <p class="para">
                                                                                제출된 지원서를 바탕으로 지원자의 학력/경력과 모집직무와의 연관성을 검토하고 결격사유의 유무를 확인하게 됩니다. 특히, 지원자가 직접 기술한 입사지원서의 경우 HR부서와 현업 관련부서가 공동으로 검토하고 있으며, 이를 통해 지원자 개개인의 가치관이 SK가 지향하는 가치관과 얼마나 부합하는가를 면밀히 검증하고 있습니다.
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">필기전형</p>
                                                                            <p class="para">
                                                                                SKCT는 SK에서 직무 수행을 위해 요구되는 역량을 다양하고 종합적인 관점에서 측정하고 있으며, 일하는 데 필요한 복합적이고 고차원적인 사고능력을 측정하는 인지역량 (Critical Thinking), 일하면서 부딪치는 문제상황에서 적절한 판단을 내릴 수 있는지를 측정하는 실행역량 (Situational Judgment), 그리고 일하는 데 적합한 성격, 가치관, 태도를 갖추고 있는지 측정하는 심층역량 (Work Personality)으로 구성되어 있습니다.
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">면접전형</p>
                                                                            <p class="para">
                                                                                지원자의 전문지식, 직무 이해도, 업무수행능력 및 잠재능력, 기업관, 패기 등을 개인/집단면접 형태의 다양한 면접도구를 활용하여 평가합니다.
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">건강검진</p>
                                                                            <p class="para">
                                                                                면접 전형에서 합격하신 분에 한하여 건강 검진을 실시합니다.
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">채용방식</p>
                                                                            <p class="para">
                                                                                신입사원 채용은 수시채용 및 채용연계형 인턴십을 통해 진행하며, 경력사원 채용은 충원 Position이 발생할 경우 수시로 채용을 진행하고 있습니다.
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
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
