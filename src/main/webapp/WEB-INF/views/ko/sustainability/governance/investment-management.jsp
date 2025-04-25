<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-08-02
  Time: 오후 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>투자관리 &lt; 거버넌스 &lt; Sustainability &lt; SK Networks</title>
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
            let newUrl = url;
            if(tabId != ""){
                newUrl += `?tabId=` + tabId;
            }
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
    <div class="main esg info-protection" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">거버넌스</span></li>
                            <li class="data-item"><span class="item-text">투자관리</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">투명경영으로<br> 미래가치를 창출합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">투자관리</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-governance.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">투자관리 페이지</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="tab-display design1 case1 type1">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                        <button role="tab" class="tab-text" id="" onclick="tabClickEvent(event)">투자관리</button>
                                    </li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                        <button role="tab" class="tab-text" id="esgmanagement" onclick="tabClickEvent(event)">자회사ㆍ손자회사 ESG관리</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-display design1 case1">
                            <div class="panel-list">
                                <!-- 투자관리 -->
                                <div id="tab-panel1" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="section design1 case1 type1 operation">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">투자위원회 운영</h4>
                                                        <p class="section-summary">SK네트웍스는 신규투자 및 매각, 주요한 지배구조 변경에 대한 전략 적합성, 집행의 합목적성 및 적정성, 투자 경제성, Risk 등을 검토, 심의하고 의사 결정하기 위해 ‘투자위원회’를 설치 및 운영합니다.</p>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-figure">
                                                        <img src="/assets/images/sustainability/esg-ivestment-bg.jpg" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case1 type1 configuration">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">투자위원회 역할 및 구성</h4>
                                                        <p class="section-summary">투자위원회는 경영 환경, 재무, 법무, ESG 등에 대하여 사전 검토된 투자 시안을 바탕으로 협의 및 토론을 진행하고 최종 의사 결정을 합니다.<br> 투자실무협의체는 투자 사안에 대해 Risk 점검 중심의 사전 검토를 주관하고 투자실무협의체에서 검토된 의견서는 투자위원회에 제시됩니다.</p>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        상정위원회는 투자실무협의체 이전에 안건의 투자위원회 상정 여부를 사전 검토하며<sup>1)</sup>, 견제 전담 조직(Red Team)은 투자위원회에 상정된 안건에 대해 발의부서와 별도로 Risk
                                                        및 투자 타당성을 분석∙검토하는 안건별 임시 조직<sup>2)</sup>으로서, 이사회 부의 대상 투자 건에 한하여 Worst Case Projection 제시 등 검토 결과물을 투자위원회와 이사회에 별도로 제출합니다<sup>3)</sup>
                                                    </p>
                                                    <p class="comment design1">
                                                        1) 내부 구성원은 투자실무협의체와 동일<br>
                                                        2) 경영지원본부장(CFO) 산하 Virtual TF로 운영, RM실장 실무 총괄 및 투자실무협의체 구성팀의 팀원들로 구성<br>
                                                        3) 기존 투자 금액 변경의 건, 기존 사업의 확장에 따른 투자는 검토 대상에서 제외하되, 예외적으로 경영진의 결정 및 상정위원회 의결로 대상을 추가할 수 있음.
                                                    </p>
                                                    <div class="board-list design13">
                                                        <div class="board-item type1">
                                                            <div class="board-wrap">
                                                                <div class="board-head">
                                                                    <em class="board-subject">투자위원회</em>
                                                                </div>
                                                                <div class="board-body">
                                                                    <div class="bullet-display design1 case1 type6">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">위원 : 대표이사, 사업총괄사장, AI본부장, 경영지원본부장, 기획재무실장, RM실장, 지속경영실장</li>
                                                                            <li class="data-item">간사 : AI Portfolio Innovation 실장</li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="board-item type2">
                                                            <div class="board-wrap">
                                                                <div class="board-head">
                                                                    <em class="board-subject">투자실무협의체 / 상정위원회</em>
                                                                </div>
                                                                <div class="board-body">
                                                                    <div class="bullet-display design1 case1 type6">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">위원 : Global Investment Group팀장, 전략팀장, 재무팀장, 회계팀장, 세무팀장, 법무팀장, ESG경영팀장, RM파트장</li>
                                                                            <li class="data-item">구매성 투자의 경우, 구매/자산관리팀장 포함</li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case1 type1 process">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">투자 프로세스</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-figure">
                                                        <img src="/assets/images/sustainability/esg-ivestment-diagram-03.svg" alt="투자위원회 운영 프로세스에 관한 이미지 입니다. 자세한 내용은 하단을 참고해주세요." class="pc-only">
                                                        <img src="/assets/images/sustainability/esg-ivestment-diagram-03-mo.svg" alt="투자위원회 운영 프로세스에 관한 이미지 입니다. 자세한 내용은 하단을 참고해주세요." class="mo-only">
                                                        <div class="blind">
                                                            <ul>
                                                                <li>
                                                                    <em>발의부서</em>
                                                                </li>
                                                                <li>
                                                                    <em>상정위원회</em>
                                                                    <span>실패시 보완사항으로 발의부서 단계로 이동</span>
                                                                    <span>조건 충족 시, 필요 시 견제 전담 조직을 총해 투자위원회 or 내부투자위원회 단계로 이동</span>
                                                                </li>
                                                                <li>
                                                                    <em>투자실무협의체</em>
                                                                </li>
                                                                <li>
                                                                    <em>투자위원회 or 내부투자위원회</em>
                                                                </li>
                                                                <li>
                                                                    <em>결과 통보</em>
                                                                    <span>조건 충족 시 이사회 결의 단계로 이동</span>
                                                                </li>
                                                                <li>
                                                                    <em>이사회 결의</em>
                                                                    <span>조건 충족 시 주주총회 단계로 이동</span>
                                                                </li>
                                                                <li>
                                                                    <em>주주총회</em>
                                                                </li>
                                                                <li>
                                                                    <span>※ 의결기준 : 전략적 방향성, R&C 확보방안, Valuation, Milestone, 주요 issue 및 Contingency Plan, ESG/SV, Exit plan 기타 등</span>
                                                                    <span>※ 투자위원회 통과 기준 : 전체 위원의 2/3 이상 참석 위원의 2/3 이상 찬성 필요</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <p class="comment design1">* 이사회 승인 가결을 필요로 하는 투자 대상일 경우, 전략·ESG경영위원회를 통한 사전 심의 절차 진행 후 이사회의 최종 검토를 거쳐 의결합니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 투자관리 -->
                                <!-- 자손자회사 -->
                                <div id="tab-panel2" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="section design1 case1 type1 direction">
                                            <div class="section-wrap">
                                                <div class="section-body">
                                                    <p class="para">SK네트웍스는 자회사와 손자회사를 상장여부, 보유지분 비중, 성장 단계 등을 고려하여 3개 그룹으로 분류하여, 그룹별 ESG 관리 방향성 및 목표를 수립하였습니다. 각 사의 ESG 지표별 단기/중기 과제 정의 및 실행을 통해 단계적으로 관리 수준을 향상시킬 예정입니다.</p>
                                                    <div class="data-display design1 case9 type7">
                                                        <div class="data-list">
                                                            <div class="data-item bg-shadow-layout case2">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <em class="data-subject">자회사/손자회사 ESG 관리 기준 및 방향</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="data-display design3 case3 type3">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">상장사/비상장사</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">상장사는 관리지표를 모회사와 유사하게 광범위하게 선정하여, 다양한 ESG 항목에 대해 수준 제고</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">보유 지분 비중(80% 이상)</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">비상장사 중 보유지분 80% 이상인 경우, 상장사와 유사한 수준으로 관리</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">성장 단계 (Spin-off 기간 연계)</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">신생 자회사(Spin-off 2년 이하)의 경우, 최소한의 필수 ESG 항목을 선정하여 우선 관리하고 산업 특성/성장 수준을 고려하여 관리 범위 단계적 강화</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">자회사/손자회사</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">자회사의 ESG 방향 및 목표 수준에 Align하여 자회사 자체적으로 손자회사의 ESG 관리</p>
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
                                                    <p class="para">상장사 및 비상장 자회사(보유지분 80% 이상 &amp; 성장 단계)부터 현황 점검 및 중/단기 과제 수행, 지속가능보고서 발간 등을 통해 ESG 수준을 제고하고, 궁극적으로는 2026년까지 모든 자회사/손자회사가 Global 업계 Top-tier 수준에 도달하는 것을 목표로 합니다. 또한 SK네트웍스는 실행력 강화를 위하여, SV밋업(meet up)에 전 사업부·자회사의 임원/팀장/실무자가 모여 각 사업별 ESG 추진 현황을 공유하고 논의하며 상호 학습하고 있습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case1 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Roadmap</h4>
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
                                                                                <li class="data-item">자/손회사 ESG 관리정책 수립 (2022년)</li>
                                                                                <li class="data-item">주요 자회사 ESG 현황 점검 및 중단기 과제 수립, 단기 과제 실행</li>
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
                                                                                <li class="data-item">주요 자회사 정기적 ESG 수준 점검 및 중기 과제 실행을 통해 SK네트웍스와 동일한 수준의 ESG 관리 성과 달성(2025년)</li>
                                                                                <li class="data-item">자/손회사 그룹별 ESG 수준에 따른 중/단/장기 과제 수행</li>
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
                                                                                <li class="data-item">모든 자/손회사 Global Top-tier 수준 도달(현재 7개사 기준)</li>
                                                                                <li class="data-item">자/손회사 ESG 관리정책(핵심지표) 고도화(e.g. 사별 자체 지표 선정 등)</li>
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
                                        <div class="section design1 case2 type1 performance">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">ESG 관리 실행 및 성과</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="bullet-display design1 case1 type6">
                                                        <ul class="data-list">
                                                            <li class="data-item">2020년부터 전 사업부·자회사가 참여하는 SV밋업 시행을 통해 자/손회사 ESG 현황 파악 및 관리</li>
                                                            <li class="data-item">SK네트웍스 및 자/손회사 총 8개사 Net Zero 2040 선언(2021년), EV100 가입(2021년), SBTi 가입(2022년 9월) 및 목표 승인 (2023년 8월)</li>
                                                            <li class="data-item">SK네트웍스 지속가능경영보고서 내 SK매직, SK네트웍스서비스 등 자회사 주요 ESG 성과 공시</li>
                                                            <li class="data-item">자회사별 단계적 ESG 성과 점검 및 공시 진행 (2022년~)</li>
                                                        </ul>
                                                    </div>
                                                    <%--<p class="comment design1">* 우선 관리 지표 : 인권선언 및 정책, 구성원 안전, 기업데이터 및 정보보호, 반부패 정책, 구성원 반부패 관련 교육</p>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 자손자회사 -->
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
