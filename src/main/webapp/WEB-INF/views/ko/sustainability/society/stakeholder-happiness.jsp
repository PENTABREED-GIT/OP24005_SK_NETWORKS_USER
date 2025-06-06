<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>이해관계자 행복 &lt; 사회 &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            localAnimations_Case02();
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
    <div class="main esg understand" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">사회</span></li>
                            <li class="data-item"><span class="item-text">이해관계자 행복</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">지속가능한 사회를 위한<br>
                            경영을 하겠습니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">이해관계자 행복</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-society.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">이해관계자 행복</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="tab-display design1 case2 type2">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                        <button role="tab" class="tab-text" id="stakeholder-communication" onclick="tabClickEvent(event)">이해관계자 소통</button>
                                    </li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                        <button role="tab" class="tab-text" id="supplychain" onclick="tabClickEvent(event)">지속가능한 공급망</button>
                                    </li>
                                    <li id="tab3" class="swiper-slide tab-item" aria-controls="tab-panel3">
                                        <button role="tab" class="tab-text" id="seecosystem" onclick="tabClickEvent(event)">지역사회 및 SE 생태계 지원</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-display design1 case1">
                            <div class="panel-list">
                                <!-- tab1 -->
                                <div id="tab-panel1" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">이해관계자 소통</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스는 경영활동에 직·간접적으로 영향을 주고받는 모든 대상을 이해관계자로 정의합니다. 고객, 구성원, 협력사, 정부, 주주/투자자, 지역사회를 이해관계자로 구분하며, 다양한 참여 채널을 통해 원활한 소통을 실시하고 있습니다. 또한 이해관계자 설문조사를 실시하여 SK네트웍스의 지속가능경영을 위한 의견을 듣고 경영활동에 적극적으로 반영하기 위해 노력하고 있습니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1 roadmap">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">이해관계자 채널ㆍ이슈 및 대응 Roadmap</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="t-display design1 case2 type1 align1 scroll">
                                                        <table style="min-width: 927px;" class="col-w-1">
                                                            <caption>이 표는 이해관계자 채널ㆍ이슈 및 대응 Roadmap 정보를 제공하며 이해관계자, 참여채널, 주요이슈, 단기 계획 (2022년 ~ 2023년), 중기 계획 (2024년 ~ 2026년), 장기 계획 (2027년 부터)로 구성되어 있습니다.</caption>
                                                            <colgroup>
                                                                <col class="col1">
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                            </colgroup>
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col">이해관계자</th>
                                                                    <th scope="col">참여채널</th>
                                                                    <th scope="col">주요이슈</th>
                                                                    <th scope="col">단기 계획<br>('22년 ~ '23년)</th>
                                                                    <th scope="col">중기 계획<br>('24년 ~ '26년)</th>
                                                                    <th scope="col">장기 계획<br>('27년 ~ )</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <!-- 고객 -->
                                                                <tr>
                                                                    <th rowspan="4" scope="col">고객</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">VOC 채널</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">고객만족도</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">고객 만족도 제고</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">고객 만족 저해 요인(Pain Point)의 궁극적 해결 및 BM 혁신/신규 BM 창출을 통한 고객가치 제고</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="4">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">브랜드별 고객의 ESG 평가 항목 개선 (조사대상 다양화 검토 등 포함)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">대리점/지점<br> 고객 접점</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">고객 맞춤형<br> 솔루션</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">새로운 제품/서비스 개발</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">제품/서비스를 통한 사회적 가치 창출</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">설문조사,<br> 고객 만족도 조사</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">개인정보보호</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">고객 접점 서비스 개선</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">홈페이지, SNS</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">브랜드 조사 및 개선 (ESG 평가항목 추가/수정)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">브랜드별 고객의 ESG 평가 결과 추이 분석</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- //고객 -->
                                                                <!-- 구성원 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="2" scope="col">구성원</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Culture Survey</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">구성원의 행복 저해요인을 발굴/개선하고 [도전-성과-성장]의 행복전략 실천력 제고</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Culture Survey를 통하여 구성원 의견 청취 및 패기 실천 환경 조성</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">행복 진단/측정 체계 고도화 및 공유 시스템 구축</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">일하는 방식 및 기업문화 혁신 플랫폼으로 진화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">경영층과의 대화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">일하기 좋은 문화를 만들기 위한 Solution을 찾고 제안하는 CEO-구성원간 협의체</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">구성원이 몰입하고 성장할 수 있는 단기 과제 수행 및 제안하는 방식으로 운영</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">CEO - 구성원 간 직접 소통의 장 마련 (정기적 소통)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">CEO - 구성원 간 직접 소통의 장 확대<br> (정기적 소통 확대)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- //구성원 -->
                                                                <!-- 협력사 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="4" scope="col">협력사</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 금융 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 사업 여건<br> 지속적 개선 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">동반성장펀드<br> 확대</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">동반성장펀드 외<br> 추가 금융 지원<br> (ESG 우수 협력사<br> 금융지원 등)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지원 규모 및 대상<br> 확대 지속</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 소통 체계<br> 강화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 VOC 상시 파악 및 정책 반영</li>
                                                                                <li class="data-item">동반성장 과제 발굴 및 시행</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 VOC 방문 청취 프로그램 설계/도입</li>
                                                                                <li class="data-item">온라인 소통 채널 구축</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">VOC 방문 청취 시행<br> - 주요 협력사(1회/년)</li>
                                                                                <li class="data-item">구매 정책 반영</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">VOC 방문 청취 대상 협력사 수 및 빈도 확대</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 ESG 개선 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 ESG 관리 수준 제고 및 내재화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">ESG 관리 필요성 및 중대성 전파</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 ESG 평가 및 개선 컨설팅 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">ESG 우수 협력사 대상 인센티브 제도 도입 및 지원 확대</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 교육 프로그램 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 구성원 역량 신장</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 구성원 대상 온라인 교육 프로그램 시범 운영</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 구성원 대상 온라인 교육 프로그램 컨텐츠 확대 및 정례화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 구성원 대상 오프라인 교육 병행 확대</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- // 협력사 -->
                                                                <!-- 주주/투자자 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="3" scope="col">주주/투자자</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">주주총회</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">회사-주주간<br> 쌍방향 소통 강화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">주주 질의 환경 개선 및 충분한 시간 확보</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">주주와의 대회, 주총 생중계 등 온라인 플랫폼 활용한 소통 창구 다각화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">법인 및 개인 투자자 미팅</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">SK네트웍스 Financial Story 노출 범위 및 빈도 확대</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">투자자 대상 수시 커뮤니케이션 및 애널리스트 리포트 발간 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2" colspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">투자자 니즈에 맞춘 온/오프 IR 행상 실시</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">ESG 선도기업 인식 확립 및 ESG 투자 수요 확보</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">잠재적 투자자 대상 국내외 IR 실행</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- // 주주/투자자 -->
                                                                <!-- 지역사회 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="4" scope="col">지역사회</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지방자치단체</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">취약계층을 위한 프로그램 활성화(안전망 확보, 소외계층 문화 프로그램 혜택 제공 등)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">사회공헌 체계 업데이트(’22년)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">사회공헌 체계 운영</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="3">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">사회공헌 체계 고도화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역사회보장 협의체</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역사회 Risk 관리</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역사회 관련 Risk 확인 및 Pool 도출, Risk 관리 체계 수립</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역사회 관련 Risk 관리 체계 고도화</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">관내 복지관/주민센터 담당자</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역사회 공헌 및 지속가능한 환경 도시 구현</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역사회 협의 채널 확보 - 지역사회 공헌을 위한 업무협약 (MOU)체결 (’22년, 워커힐-광진구청)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">문화/관광 활성화를 위한 컨텐츠 채널 활성화(워커힐)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역사회 공헌 컨텐츠 개발 및 운영</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역 주민 상생 프로그램 개발 및 시행</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">지역 주민 상생 프로그램 활성화, 성과 측정/관리</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- // 지역사회 -->
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- tab2 -->
                                <div id="tab-panel2" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="section design1 case3 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력사 동반성장</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="board-display">
                                                        <div class="post-list">
                                                            <div class="post-item">
                                                                <div class="post-wrap">
                                                                    <div class="post-figure">
                                                                        <img src="/assets/images/sustainability/co-growth-pc.svg" alt="협력사 동반성장 이미지입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only">
                                                                        <img src="/assets/images/sustainability/co-growth-mo.svg" alt="협력사 동반성장 이미지입니다. 자세한 설명은 하단 내용을 참고하세요." class="mo-only">
                                                                        <div class="blind">
                                                                            <em>SK네트웍스 동반성장 3대 중점 추진전략</em>
                                                                            <ul>
                                                                                <li>공정한 기회 제공 및 절차적 투명성 유지
                                                                                    <ul>
                                                                                        <li>윤리적 구매 선언</li>
                                                                                        <li>지속적인 협력업체 발굴 및 공정한 거래 기회 제공</li>
                                                                                        <li>협력업체 선정-계약-정산 단계별 공정거래 투명성 유지</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li>상생 협력 체계 강화
                                                                                    <ul>
                                                                                        <li>주요 협력업체 소통 채널 구축 및 VOC 청취</li>
                                                                                        <li>상생 과제 발굴</li>
                                                                                        <li>ESG/SRM*평가 우수 협력업체 선정, 협력 강화</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li>협력업체 경쟁력 강화
                                                                                    <ul>
                                                                                        <li>상생 펀드 조성</li>
                                                                                        <li>협력업체 지원 프로그램 마련</li>
                                                                                    </ul>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <p class="comment design1">* SRM : 공급사 관계관리 시스템(Supplier Relationship Management)</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">공정한 기회 제공 및 절차적 투명성 유지</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스의 공급망 관리 성과는 이사회 산하 전략∙ESG위원회에 보고하고 주요 사항에 대한 심의를 받고 있습니다.<br> SK네트웍스는 공급업체 선정의 적정성을 심의하고 공정하고 투명한 구매 활동을 지속하기 위해 구매심의위원회를 운영하고 있습니다. 심의 대상*이 되는 구매 건에 대해 구매담당 조직에서 발의하여 위원회를 개최합니다.
                                                    </p>
                                                    <p class="comment design1">* 5억 원 이상의 수의계약 및 10억 원 이상의 경쟁 구매 건</p>
                                                    <div class="board-display">
                                                        <div class="post-list design5 case1 type1">
                                                            <div class="post-item">
                                                                <div class="post-wrap">
                                                                    <div class="post-figure">
                                                                        <img src="/assets/images/sustainability/trans.png" alt="구매심의위원회 구성, 감사실장 1명, 기업문화실장 1명(위원장), 주요 관리 임원* 3명" class="pc-only">
                                                                        <img src="/assets/images/sustainability/trans-mo.png" alt="구매심의위원회 구성, 감사실장 1명, 기업문화실장 1명(위원장), 주요 관리 임원* 3명" style="min-width: 63.6rem;" class="mo-only">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p class="comment design1">* 기획재무실장, 기업문화실장, 지속경영실장</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력사 구성원 교육 지원</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        협력사 구성원을 대상으로 2024년 ESG 온라인 교육 및 교육비 지원을 통해 협력사의 적극적인 참여를 도모하였습니다.<br>
                                                        2022년에 시행했던 기존의 인권/윤리 과목 외 환경, 반부패, 4대 법정의무교육 등으로 교육 컨텐츠를 확대하여, 협력사의 구성원 교육 부담 해소 및 ESG 경영 참여를 지원하였습니다. 2024년에는 21개 협력사 132명이 자발적으로 참여하여 총 411개 강의를 수강하였으며(교육 이수율 100%) 향후에도 SK네트웍스는 다양하고 실효적인 교육 프로그램을 마련하여 협력사에 지속 지원함으로써 동반성장의 가치를 꾸준히 실현해 나가고자 합니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력사 정보 보호</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        공정거래 및 투명성을 유지하기 위해 협력사 선정/거래 단계에서 정보와 저작물 등의 사용은 적법한 권리와 절차에 따라야 합니다. SK네트웍스는 협력사의 지식재산권과 영업비밀을 존중하고, 협력사 선정/거래 과정에서 정당한 사유 없이 협력사의 기술 자료를 요구하거나 지식재산권 사용을 강제하지 않으며, 이를 임의로 제3자에게 제공하거나 부당하게 이용하지 않습니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">상생 협력체계 강화</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        급변하는 경영환경 속에서 협력사들의 어려움에 깊이 공감하고 도움을 주고자 노력하고 있습니다. 매년 협력사를 방문하여 현장의 목소리에 귀 기울이고 의견을 분석하여 협력사가 향후 발생할 수 있는 리스크를 최소화할 수 있도록 지원하고자 현장 방문을 진행하고 있으며, 2023년에는 주요 협력사 48개, 2024년에는 47개를 대상으로 시행하였고 2025년에는 약 50개 협력사를 대상으로 시행할 예정입니다. 또한 새롭게 구축된 구매시스템(www.skbuyone.com) 내 소통 게시판을 통해 상시 주요 협력 사항을 안내하고 자료를 공유하고 있습니다. 이와 같은 다양한 접수 채널을 통해 협력사의 의견 및 고충을 접수하고 있으며, 2023년 총 271건 접수, 총 262건을 처리(처리율 96.7%), 2024년 총 132건 접수, 127건 처리(처리율 96.2%)하였습니다. 앞으로도 협력사의 요청 사항에 대해 적극적으로 의견을 반영하고 개선해 나가겠습니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1 growth-fund">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">동반성장펀드 : 협력업체 경쟁력 강화</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스는 SK그룹의 동반성장 펀드 및 동반성장 프로그램(CEO 세미나, MBA 등)에 적극 참여하고 있습니다. 동반성장펀드는 SK네트웍스가 IBK기업은행과의 협약을 통해 조성한 협력사에 자금을 지원하고 대출 이자를 감면해 주는 프로그램으로 SK네트웍스는 동반성장펀드를 통해 코로나19 및 경기 침체 등으로 인해 경제적 어려움이 있는 협력사들을 지원하고 있습니다. 특히, 2021년부터 지원대상을 자회사의 협력사까지 확대하여 운영하고 있으며 2021년에는 8.3억 원, 2022년에는 21.9억원, 2023년에는 최대 수준인 41.5억원을 지원하여 2021년 대비 5배 이상으로 확대하였으며 향후에도 현 수준을 유지하며 지원 예정입니다.
                                                    </p>
                                                    <div class="data-display design1 case2 type1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <em class="data-subject">동반성장펀드 현황</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="t-display design1 case1 type1 align3">
                                                                            <table>
                                                                                <caption>이 표는 동반성장펀드 현황 정보를 제공하며 년도, 협력사 수, 실적으로 구성되어 있습니다.</caption>
                                                                                <colgroup>
                                                                                    <col>
                                                                                    <col>
                                                                                    <col>
                                                                                </colgroup>
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th scope="col">년도</th>
                                                                                        <th scope="col">협력사 수</th>
                                                                                        <th scope="col">실적</th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>2021</td>
                                                                                        <td>3</td>
                                                                                        <td>8.3억원</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>2022</td>
                                                                                        <td>9</td>
                                                                                        <td>21.9억원</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>2023</td>
                                                                                        <td>15</td>
                                                                                        <td>41.5억원</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>2024</td>
                                                                                        <td>15</td>
                                                                                        <td>37.7억원</td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                        <p class="comment design1">* 2024.12월 말 기준</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력사 동반성장 지원 Roadmap</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-display roadmap case1 type1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2025</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case2 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">동반성장펀드 운영 확대<br> - ’24년 대비 10% 이상 확대</li>
                                                                                <li class="data-item">추가 금융 지원 프로그램 확대/운영</li>
                                                                                <li class="data-item">상생 과제 발굴 및 시행</li>
                                                                                <li class="data-item">협력사 중간관리자의 리더십 교육 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2026</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">투자사 동반성장 제도 실행 지원</li>
                                                                                <li class="data-item">동반성장 제도의 시스템적 실행 기반 마련</li>
                                                                                <li class="data-item">동반성장펀드 운영 확대</li>
                                                                                <li class="data-item">협력사 중간관리자의 역량 교육 추가 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2027</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">동반성장 중점 추진전략 재정립</li>
                                                                                <li class="data-item">동반성장 제도의 시스템화 완성</li>
                                                                                <li class="data-item">동반성장펀드 외, 신규 금융 지원프로그램 개발</li>
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
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력사 ESG리스크 관리</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스는 E(환경), S(사회), G(거버넌스) 측면에서 지속가능한 윤리적 구매 체제(Ethical Procurement)를 수립함으로써 공정하고 투명한 구매 체계를 확립하고 발생 가능한 협력사 ESG리스크를 관리하여 기업 가치를 제고하고자 합니다. 기업윤리, 인권존중, 안전보건, 환경보호 등에 대한 규정이 포함된 ‘협력사 행동규범’을 제정하여 협력사 준수의 의무화(계약 시 자동 첨부)를 원칙으로 운영하고 있으며, ‘지속가능한 공급망을 위한 Guideline’을 제시하여 협력사 선정과 평가 시 사회적 책임 요소를 반영합니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력업체 대상 지속가능한 공급망을 위한 Guideline</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스와 거래하는 모든 협력업체는 SK네트웍스의 '지속가능한 공급망을 위한 Guideline'을 준수해야 합니다. 동 Guideline은 노동 및 인권, 안전 및 보건, 윤리 및 공정거래, 경영 일반 사항에 대한 기본적인 사항을 규정하고 있습니다.
                                                    </p>
                                                    <div class="btn-display align1">
                                                        <div class="btn-area">
                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/사회/이해관계자 행복/SK네트웍스 공급망 지속가능성 관리 정책.pdf"><span class="btn-text">공급망 지속가능성 정책 다운로드</span></a>
                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/사회/이해관계자 행복/ESG Guideline_K.pdf"><span class="btn-text">지속가능한 공급망을 위한 가이드라인 다운로드</span></a>
                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/사회/이해관계자 행복/Supplier Code of Conduct(K).pdf"><span class="btn-text">협력사 행동규범 다운로드</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1 esg-risk">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력사 ESG 평가 결과</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스는 협력사의 ESG리스크 관리 강화를 위해 외부 평가 전문기관에 의뢰하여 매년 협력사 ESG평가를 진행하고 있습니다. 협력사의 거래 규모와 빈도, 사업
                                                        영향도 등을 고려하여 ESG 리스크 평가 대상을 선정한 후 평가를 진행하고, 미흡한 협력사의 경우 협력사 스스로 차년도에 개선목표 수립 및 개선방안을 실행할 수 
                                                        있도록 별도의 개선지원 컨설팅을 진행합니다.<br> 
                                                        이러한 활동을 통해 당사의 고위험협력사 비율은 ‘24년 4%(’23년 48%)로 개선되었습니다. 주요 개선 요인으로는 안전보건경영방침 수립, 환경경영체계 구축, 에너지 절감 캠페인 활동 등이 있습니다.<br> 
                                                        SK네트웍스는 지속적으로 협력사의 ESG 리스크 측정, 평가 및 관리 체계를 고도화하여 협력사가 ESG 리스크를 예방하고 지속가능경영을 실천할 수 있도록 조력자의
                                                        역할을 다하겠습니다.
                                                    </p>
                                                    <div class="data-display design1 case7 type1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <em class="data-subject">협력사 ESG 평가 기준</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="board-display">
                                                                            <div class="board-list esg-stand">
                                                                                <div class="board-item">
                                                                                    <div class="board-wrap">
                                                                                        <div class="board-figure earth"></div>
                                                                                        <div class="board-name">Environment &amp; 환경</div>
                                                                                        <div class="board-body double">
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">환경 전략</li>
                                                                                                    <li class="data-item">환경 경영</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">환경 성과</li>
                                                                                                    <li class="data-item">환경 관리</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="board-item">
                                                                                    <div class="board-wrap">
                                                                                        <div class="board-figure people"></div>
                                                                                        <div class="board-name">Social &amp; 사회</div>
                                                                                        <div class="board-body double">
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">고용 안정</li>
                                                                                                    <li class="data-item">고용 조건</li>
                                                                                                    <li class="data-item">고용 평등</li>
                                                                                                    <li class="data-item">사회 공헌</li>
                                                                                                    <li class="data-item">윤리 경영</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">안전 보건</li>
                                                                                                    <li class="data-item">안전 투자</li>
                                                                                                    <li class="data-item">공급망 관리</li>
                                                                                                    <li class="data-item">교육 관리 </li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="board-item">
                                                                                    <div class="board-wrap">
                                                                                        <div class="board-figure law"></div>
                                                                                        <div class="board-name">Governance &amp; 경제/경영</div>
                                                                                        <div class="board-body double">
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">경영 안전성</li>
                                                                                                    <li class="data-item">회계 투명성</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">경영 시스템</li>
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
                                                    <div class="data-display design1 case7 type1 flex">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <em class="data-subject">ESG 위험군 별 협력사 분포</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <img src="/assets/images/sustainability/esg-risk-01-pc.svg" alt="ESG 위험군 별 협력사 분포 설명 이미지입니다." class="pc-only">
                                                                        <img src="/assets/images/sustainability/esg-risk-01-mo.png" alt="ESG 위험군 별 협력사 분포 설명 이미지입니다." class="mo-only" style="min-width: 1016px;">
                                                                        <p class="blind">
                                                                            심각(RM-7), 취약(RM-6)은 2개 기업(4%)으로 고위험군에 속하며 집중 개선영역입니다. 보통(RM-5), 양호(RM-4), 우수(RM-3)는 46개 기업(92%) 중위험에 속합니다. 탁월(RM-2), 최상(RM-1)은 2개 기업(4%) 저위험에 속합니다. 최저 1.19, 전체평균 4.86, 최고점 9.34입니다. 2023년 ClickEsg 평균은 3.55입니다. 종합 ESG Risk는 중위험으로 4.86이며, ESG-Risk는 양호 (4등급)입니다. * 2023년 ClickEsg 결과(3자 검증 기준) 평균 점수는 3.55, 최고 점수는 9.83입니다.
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">협력사 ESG 리스크 관리 Roadmap</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-display roadmap case1 type1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2025</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case2 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 ESG 개선 지원</li>
                                                                                <li class="bullet-display design1 case3 type1">
                                                                                    <ul class="data-list">
                                                                                        <li class="data-item">진단커버리지* 100% 유지</li>
                                                                                        <li class="data-item">고위험 협력사 비율 10% 미만 목표</li>
                                                                                        <li class="data-item">고위험 근접군 협력사 비율 40% 미만 목표</li>
                                                                                        <li class="data-item">전년도 고위험 협력사 대상 개선 컨설팅 지원</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li class="data-item">ESG 우수협력사 대상 Incentive 지원 확대 검토</li>
                                                                                <li class="data-item">자회사의 ESG 기반 구매관리체계 구축 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2026</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 ESG 개선 지원</li>
                                                                                <li class="bullet-display design1 case3 type1">
                                                                                    <ul class="data-list">
                                                                                        <li class="data-item">진단커버리지 100% 유지</li>
                                                                                        <li class="data-item">고위험 근접군 협력사 비율 5% 미만 목표</li>
                                                                                        <li class="data-item">고위험 근접군 협력사 비율 20% 미만 목표</li>
                                                                                        <li class="data-item">전년도 고위험 근접군 협력사 대상 개선 컨설팅 지원</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li class="data-item">ESG 고위험 협력사 Penalty 제도 검토</li>
                                                                                <li class="data-item">자회사의 ESG 기반 구매관리체계 실행 지원</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2027</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">협력사 ESG 개선 지원</li>
                                                                                <li class="bullet-display design1 case3 type1">
                                                                                    <ul class="data-list">
                                                                                        <li class="data-item">진단커버리지 100% 유지</li>
                                                                                        <li class="data-item">고위험 근접군 협력사 비율 Zero 실현</li>
                                                                                        <li class="data-item">고위험 근접군 협력사 비율 10% 미만 목표</li>
                                                                                        <li class="data-item">전년도 고위험 근접군 협력사 대상 개선 컨설팅 지원</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li class="data-item">ESG 고위험 협력사 Penalty 제도 시행</li>
                                                                                <li class="data-item">자회사의 ESG 기반 구매관리 실행 지원 (계속)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="comment design1">* 중점 관리 협력사 중 2년대 ESG평가 진단을 진행한 협력사의 비율</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- tab3 -->
                                <div id="tab-panel3" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">사회공헌 정책</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스는 ‘행복한 참여, 행복한 상생, 행복한 변화’라는 3가지 원칙을 기반으로 다양한 사회공헌 활동을 추진하며 지역사회 전체에 더 나은 변화와 지속적인 성장에 기여하기 위해 노력하고 있습니다. 비즈니스 모델 연계를 통해 지속적으로 활동하고 나아가 구성원 비즈니스. 핵심역량 기반 효과적인 지원을 통하여 자발적으로 참여할 수 있는 사회공헌 활동을 추구합니다. 사업장 인근의 지역사회 뿐만 아니라, 공급망 전반에 있어 사업활동으로 인해 영향을 받을 수 있는 모든 이해관계자들을 대상으로 그 영역을 넓혀가고 있습니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case1 type1 social-system">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">사회공헌 추진체계</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="post-list design5 case1 type1">
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure">
                                                                    <img src="/assets/images/sustainability/social.jpg" alt="사회공헌 추진체계도 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only">
                                                                    <img src="/assets/images/sustainability/social-m.jpg" alt="사회공헌 추진체계도 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="mo-only" style="min-width: 33.9rem;width: 100%;">
                                                                    <div class="blind">
                                                                        <strong>사회공헌 추진체계도</strong>
                                                                        <div>
                                                                            <div>
                                                                                <em>행복한 참여</em>
                                                                                <ul>
                                                                                    <li>의미 : SK네트웍스 전 임직원은 자발적이고 의욕적으로 자원봉사에 참여합니다.</li>
                                                                                    <li>활동 : ‘행복+’구성원 사회공헌활동, 구성원 헌혈 캠페인</li>
                                                                                    <li>성과 : ‘행복+’ 사회공헌활동, 1. 줍깅 : 인근 지역 환경 정화 활동, 2. 언택트 활동 : 소외/취약계층 후원 Kit 제작 및 지원, 3. 오프라인 활동 : 배식 봉사, 공원 정화 활동 등, 4. 헌혈 : 삼일빌딩 근무 전 구성원 참여 (연 4회)</li>
                                                                                    <li>UN SDGs : 1: No Poverty, 2: Zero Hunger, 3: Good Health And Well-Being, 11: Sustainable Cities and Communities, 12: Responsible Consumption and Production, 14: Life Below Water</li>
                                                                                </ul>
                                                                            </div>
                                                                            <div>
                                                                                <em>행복한 상생</em>
                                                                                <ul>
                                                                                    <li>의미 : 지역사회, NGO, 정부 등과 긴밀한 파트너 관계를 유지, 서로의 역량, 노하우를 공유하여 더 높은 차원의 사회공헌 활동을 실천합니다.</li>
                                                                                    <li>활동 : SE 지원 활동, 지역사회 소상공인 지원, BM 연계 지역사회 지원</li>
                                                                                    <li>성과 : 프로보노 통한 SE 자문 지원, 광진푸드마켓 대상 현물 기부, 스피드메이트 매장 근처 정화 활동</li>
                                                                                    <li>UN SDGs : 1. No Poverty, 2. Zero Hunger, 10: Reduced Inequalities, 11: Sustainable Cities and Communities</li>
                                                                                </ul>
                                                                            </div>
                                                                            <div>
                                                                                <em>행복한 변화</em>
                                                                                <ul>
                                                                                    <li>의미 : 취약계층 문제를 일시적, 자선적 차원이 아닌 체계적인 자립 지원으로 근본적인 사회 변화를 추구합니다.</li>
                                                                                    <li>활동 : 소외 취약계층 지원, 아동/청소년 지원, 학생 교육 지원</li>
                                                                                    <li>성과 : 연탄, 김치 나눔 지원, 쪽방촌 후원품 지원 기부, 어린이박물관 교구 지원 기부, 사회 진출을 앞둔 대학생 교육 프로그램 지원 기부</li>
                                                                                    <li>UN SDGs : 4: Quality Education, 8: Decent Work And Economic Growth, 10: Reduced Inequalities, 11: Sustainable Cities and Communities, 12: Responsible Consumption and Production</li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="para">
                                                        SK네트웍스는 ESG경영 활동의 내재화를 가속화하고, 전사 ESG 전략과 사업 전략의 방향성 연계 등을 검토, 심의하고 결정하기 위해 전사ESG추진위원회를 설치하여 운영하고 있습니다. 경영지원본부장을 위원장으로 선임하고 있으며, CEO, COO, 기획재무실장, 회계실장, 지속경영실장, 감사실장 등이 위원, 기업문화실장이 간사로 구성되어 있습니다. 전사ESG추진위원회는 격월 1회 개최를 원칙으로 하고 필요 시 수시로 개최하고 있으며, 지역사회를 지원하고 취약 계층을 보호하는 활동의 기부금 집행, ESG 중요도에 따른 자원 배분, 다양한 이해관계자와의 커뮤니케이션 방안 및 ESG 관련 기타 안건들을 논의합니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">지역사회 지원 Roadmap</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-display roadmap case1 type1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2023</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case2 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">SK네트웍스 사회공헌 체계 업그레이드 (‘22년)</li>
                                                                                <li class="data-item">구성원 인당 연간 봉사활동 목표 : 20h</li>
                                                                                <li class="data-item">프로보노 기획 및 운영</li>
                                                                                <li class="data-item">사회공헌 활동 Impact 측정 항목 개발</li>
                                                                                <li class="data-item">구성원 대상 만족도 설문조사 시행</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2024 ~ 2025</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">SK네트웍스 사회공헌 체계 시행</li>
                                                                                <li class="data-item">프로보노 참여 확대<br> - BM연계 성과 창출</li>
                                                                                <li class="data-item">사회공헌 활동 Impact 측정 고도화</li>
                                                                                <li class="data-item">구성원 정기 설문조사 시행 및 사회공헌 활동 프로그램 개선</li>
                                                                                <li class="data-item">SK네트웍스(본사) 대상 사회공헌 프로그램 참여 임직원 비율 85% 이상 달성</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2026 ~</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">SK네트웍스 사회공헌 체계 고도화</li>
                                                                                <li class="data-item">프로보노 활동 성과 고도화<br> - BM 연계 성과 창출 확대</li>
                                                                                <li class="data-item">외부 이해관계자와의 협력 모델 확보 (공공기관, 지역사회, NGO 등)</li>
                                                                                <li class="data-item">SK네트웍스(본사) 대상 사회 공헌 프로그램 참여 임직원 비율 85% 이상 달성</li>
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
                                        <div class="section design1 case2 type1 local-activities">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">지역사회 대상 활동 및 성과</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스는 구성원이 동참하는 ‘행복+’ 사회공헌 프로그램을 통해 지역사회의 성장에 기여하고 다양한 취약계층을 지원하기 위해 노력하고 있습니다. 구성원들이 지속적으로 지역사회 지원 활동에 참여할 수 있도록 명동밥집 배식, 남산공원과 여의샛강공원 정화, 장애인작업장, 언택트 Kit 제작 활동 등 다양한 프로그램을 운영하고 있으며, 이를 통해 2024년에는 전 구성원이 총 2,433시간 활동에 참여했습니다.<br> 
                                                        나아가 연탄, 김치나눔 지원, 쪽방촌 후원품 지원, 광진구푸드마켓 후원 등을 통해 최근 4년 동안 매년 1억원 이상의 기부금을 지원하고 있습니다. 그 중 광진구푸드마켓 프로그램은 워커힐에서 2021년부터 지원하고 있는 후원 활동으로 2024년 워커힐 HRM 등 약 1,850만원 상당의 현금 및 현물 기부를 통해 3,250건의 물품을 총 714명에게 무료로 제공함으로써 광진푸드마켓 후원 규모 확대에 지속 기여하고 있습니다.<br> 
                                                        향후에도 비즈니스 모델 연계 확대를 통한 다양한 지원 활동을 통해 지역사회의 지속가능한 발전을 위해 노력하겠습니다. 
                                                    </p>
                                                    <p class="comment design1">* HMR : Home Meal Replacement</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">SE*생태계 지원</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK네트웍스는 Business를 통한 사회문제 해결 및 사회적 가치 기반의 Business Model의 혁신을 추구하고 있으며 이를 통해 SE 생태계를 지원하고자 합니다. 특히, Safety Net 확보, 미래 성장 가능한 취약계층 지원(청소년 교육, 소상공인 지원), 사업장과 연관 있는 지역사회 문제 해결 등을 위해 꾸준히 노력하고 있습니다. 또한 Business를 수행하는 과정에서 동일한 목표를 가진 사회적 기업과 협력관계 구축 및 상생을 추구하며, SK네트웍스 구성원의 전문성을 기반으로 한 역량 지원을 통해 사회적 기업의 자립을 지원하고 함께 Business를 혁신할 수 있는 기회를 만들고자 합니다. 이에 따라, SK네트웍스와 자회사들이 영위하는 사업군인 Mobility(SK스피드메이트), 깨끗한 물/공기 구독(SK매직), Hospitality/Wellness(워커힐), 자원순환(민팃)과 연관된 사회문제를 해결하고자 하는 사회적 기업과의 협업을 우선적으로 추진하고 있습니다. 또한 SE 생태계 지원을 위한 외부 이해관계자와의 협업을 점차 확대해 나가고자 합니다.
                                                    </p>
                                                    <p class="comment design1">* Social Enterprise, 사회적 기업·소셜벤처</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">SE 생태계 지원 목표 Roadmap</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-display roadmap case1 type1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2023</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case2 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">SE 생태계 지원 방안 수립</li>
                                                                                <li class="data-item">SK네트웍스 프로보노 운영<br> - Target 형 프로보노/Spot성 프로보노
                                                                                </li>
                                                                                <li class="data-item">SE 생태계 조성 활동에 대한<br> SE 대상 정기 설문조사 시행</li>
                                                                                <li class="data-item">그룹 내 협의체/Alliance 참여</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2024 ~ 2025</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">SE생태계 지원 확대 실행 및 성과 측정</li>
                                                                                <li class="data-item">프로보노 참여 확대</li>
                                                                                <li class="data-item">참여 SE 및 구성원 의견을 반영한 SE생태계 지원 프로그램 개선</li>
                                                                                <li class="data-item">그룹 내 협의체/Alliance 참여 확대</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <div class="data-head-area">
                                                                            <em class="data-subject">2026 ~</em>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">SE생태계 지원 방안 및 성과 고도화</li>
                                                                                <li class="data-item">프로보노 활동 성과 고도화</li>
                                                                                <li class="data-item">외부 이해관계자 협업 확대</li>
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
                                        <div class="section design1 case3 type1 probono">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">SK네트웍스 프로보노 운영</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="post-list design6 case1 type1 layout1">
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-inform">
                                                                    <p class="para">SK네트웍스는 구성원의 업무 전문성을 사회에 환원하고, 사회적 기업과 소셜벤처의 성장을 지원하고자 Spot성 프로보노와 Target형 프로보노를 운영하고 있습니다. Sport성 프로보노는 자문 Needs가 있는 사회적 기업과 관련 역량을 보유한 구성원을 매칭하여 Needs 발생 시 자문을 진행하고 있으며, 자문 분야는 경영기획, 마케팅, 법률, 재무/회게, 사업기획, 통번역, R&D, 사용성 테스트 등입니다. Target형 프로보노는 사회적 기업의 요구사항에 맞게 전문 역량을 보유한 여러 명의 프로보노가 그룹으로 모여 지속적인 종합 자문을 지원하는 프로그램입니다. 사업 모델과 사회공헌 방향성에 맞는 사회적 기업을 선정해 자문 구성원들이 6개월 간 자문활동을 진행합니다.  </p>
                                                                    <p class="para">2024년 SK네트웍스 및 주요 자회사 구성원 총 27명이 총 226시간 동안 다양한 프로보노 프로그램 (Target형 프로보노(8명) / Spot성 프로보노(10명) / 사용성테스트(9명))활동에 참여하였습니다. 특히 2024년 Target형 프로보노는 SK네트웍스가 추구하는 미래사업 방향성인 AI기반 사회적기업/소셜벤처 3개사를 대상으로 종합적 자문을 진행했습니다. 그 결과 사회적기업인 ‘행복나래’에서 주관하는 2024년 프로보노 시상식에서 ‘우수 프로보노상’_그룹부문 (2개팀), ‘슈퍼루키상’ (1명)이 수상하며 구성원 보유 역량을 활용해 다양한 사회적기업의 성장과 SE 생태계 성장에 기여하였습니다.</p>
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
