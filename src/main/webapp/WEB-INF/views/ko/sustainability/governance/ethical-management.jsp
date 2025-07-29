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
    <title>윤리경영 &lt; 거버넌스 &lt; Sustainability &lt; SK Networks</title>
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
            roadMap();

            window.addEventListener("resize", () => {
                    roadMap();
                })

            function roadMap() {
                const _width = window.innerWidth
                const policy = document.querySelectorAll(".roadmap .data-body .data-content:first-child")
                if(_width > 1024) {
                    let maxHeight = 0
                    policy.forEach(policy => {
                        const bulletHeight = policy.querySelector(".bullet-display .data-list").offsetHeight
                        maxHeight < bulletHeight ? maxHeight = bulletHeight : null
                    });
                    policy.forEach(policy => {
                        const bullet = policy.querySelector(".bullet-display .data-list")
                        bullet.style.height = maxHeight + "px"
                    });
                } else {
                    policy.forEach(policy => {
                        const bullet = policy.querySelector(".bullet-display .data-list")
                        bullet.removeAttribute("style");
                    });
                }
            }
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            localAnimations_Case02();

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
    <div class="main esg ethical-man" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">거버넌스</span></li>
                            <li class="data-item"><span class="item-text">윤리경영</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">투명경영으로<br>
                            미래가치를
                            창출합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">윤리경영</h3>
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
                    <div class="content-head">윤리경영</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="tab-display design1 case1 type1">
                                        <div class="swiper tab-wrap">
                                            <ul class="swiper-wrapper tab-list" role="tablist">
                                                <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                                    <button class="tab-text" id="ethical-management-system" onclick="tabClickEvent(event)">윤리경영 체계 및 활동</button>
                                                </li>
                                                <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                                    <button class="tab-text" id="compliance" onclick="tabClickEvent(event)">컴플라이언스</button>
                                                </li>
                                                <li id="tab3" class="swiper-slide tab-item" aria-controls="tab-panel3">
                                                    <button class="tab-text" id="anti-corruption-policy" onclick="tabClickEvent(event)">부패방지방침</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="panel-display design1 case1">
                                        <div class="panel-list">
                                            <!-- tab1 -->
                                            <div id="tab-panel1" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-body">
                                                        <div class="section design1 case1 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK네트웍스는 경영 수행 과정에서 경제적 책임과 법률적 책임을 뛰어넘어 기업의 윤리적 책임을 함께 추구합니다. 공정하고 투명한 기업문화 구축을 통해 이해관계자의 신뢰를 획득하고 기업의 지속적인 성장과 발전을 이루어 사회 전체의 행복에 기여하고자 합니다. 이를 위해 SK네트웍스는 그룹의 경영 철학인 SKMS(SK Management System)를 기반으로 2007년 윤리규범을 제정·선포하여 구성원이 지켜야 할 올바른 행동과 가치판단의 기준을 제시하였으며, 당사와 거래하는 협력사에게도 이를 인지하고 준수해 줄 것을 요구하고 있습니다.
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">윤리경영 추진체계</h4>
                                                                        <p class="section-summary">SK네트웍스와 자회사들은 기업의 윤리적 책임을 다하고 이해관계자의 신뢰를 높이기 위해 윤리경영 3C(Code, Compliance, Consensus) 시스템을 구축하여 공정하고 투명한 기업문화를 조성하고자 노력하고 있습니다. 윤리경영 전담 조직인 감사실을 통해 윤리경영체계를 운영하며 윤리 문화가 정착 및 확산되도록 다양한 제도와 프로그램을 시행하고 있습니다.</p>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body process">
                                                                    <div class="post-list design5 case1 type1">
                                                                        <div class="post-item">
                                                                            <div class="post-wrap">
                                                                                <div class="post-figure">
                                                                                    <img src="/assets/images/sustainability/ethic.svg" alt="01 윤리규범 (Code), 02 윤리제도 (Compliance), 03 공감대형성 (Consensus)">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-display design3 case4 type4">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <p class="data-subject"><em class="num-tit">윤리규범<br>
                                                                                                윤리규범 실천 가이드라인<br>
                                                                                                윤리규범 실천지침 FAQ</em></p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <p class="data-subject"><em class="num-tit">윤리경영 전담조직(감사실) 운영<br>
                                                                                            자정시스템 운영<br>
                                                                                            제보채널 운영 및 제보자 보호</em></p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <p class="data-subject"><em class="num-tit">윤리 교육<br>
                                                                                                윤리실천 Workshop<br>
                                                                                                윤리실천 Survey<br>
                                                                                                윤리경영 실천 서약</em></p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">윤리경영 목표 및 달성 Roadmap</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK네트웍스는 글로벌수준의 윤리경영 체계를 확립하고, 더 나아가 자회사와 협력업체의 윤리경영 체계를 함께 강화시키고자 합니다.<br>
                                                                        이를 위해 SK네트웍스는 윤리경영 정책과 교육에 대한 단계별 목표를 수립하고 달성하고자 합니다.</p>
                                                                    <div class="data-display roadmap case1 type1">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2024 ~ 2025</em>
                                                                                            <p class="para">Global 수준의<br>
                                                                                                윤리경영체계 고도화</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="data-content">
                                                                                            <p class="para">정책</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">자회사 대상 ISO37001 인증 전파 및 지원</li>
                                                                                                    <li class="data-item">자회사 윤리경영 관리기준 수립</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-content">
                                                                                            <p class="para">교육</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">회사 특성을 반영한 윤리교육 및 반부패 교육 컨텐츠 개발/시행
                                                                                                    </li>
                                                                                                    <li class="data-item">협력업체 윤리교육 컨텐츠 확대</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2026 ~ 2027</em>
                                                                                            <p class="para">Global 수준의<br>윤리경영 체계 확산
                                                                                            </p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">정책</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">자회사 ISO37001 인증 정착/확산</li>
                                                                                                    <li class="data-item">자회사 윤리경영 관리 대상 범위 확대</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">교육</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">사업환경 변화를 반영하여 윤리교육 컨텐츠 지속 <br class="pc-only">개발
                                                                                                    </li>
                                                                                                    <li class="data-item">Target(리더/구성원)별 맞춤 교육 Pilot 시행
                                                                                                    </li>
                                                                                                    <li class="data-item">자회사 특성을 반영한 윤리교육 컨텐츠 개발 지원</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2028 ~</em>
                                                                                            <p class="para">Global Top 수준의<br>
                                                                                                윤리경영체계 확보</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">정책</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">본사 및 자회사 ISO37001 인증 유지 인증 범위 확대 검토
                                                                                                    </li>
                                                                                                    <li class="data-item">자회사 윤리경영 관리 질적 수준 향상</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">교육</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">윤리교육 및 반부패 교육 컨텐츠 최신화</li>
                                                                                                    <li class="data-item">Target별 맞춤 교육 체계 수립</li>
                                                                                                    <li class="data-item">협력업체 윤리교육 컨텐츠 지속 보완/개선</li>
                                                                                                    <li class="data-item">자회사 특성을 반영한 윤리교육 컨텐츠 개선 활동 <br class="pc-only">지원</li>
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
                                                        <div class="section design1 case10 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">윤리규범 (Code)</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK네트웍스는 2007년 그룹의 경영철학인 SKMS(SK Management System)를 기반으로 윤리규범을 제정하였으며 매년 윤리규범 실효성을 점검하고 지속적으로 개정해 오고 있습니다. 윤리규범에는 고객에 대한 자세, 구성원의 기본윤리, 주주에 대한 책임, 비즈니스 파트너와의 관계, 사회에 대한 역할 등 구성원이 지켜야 할 올바른 행동과 가치 판단의 기준들이 제시되어 있습니다. 더불어 SK네트웍스는 윤리규범을 올바르게 이해하고 실천할 수 있도록 윤리규범 실천 가이드라인을 마련해 운영하고 있습니다. 윤리규범 실천 가이드라인에는 부패방지, 상호존중, 회사 및 고객 정보보호, 이해상충 해결, 공정거래, 안전/환경/보건에 대한 책임, 위반행위 보고 및 제보자보호 등 구성원이 지켜야 할 행동양식이 명시되어 있습니다. 특히 2024년에는 제보자 보호를 강화하기 위해 해당 가이드라인을 개정하였습니다. 윤리규범과 실천 가이드라인은 전 직원 대상으로 구성원 뿐만 아니라 협력사에게도 공유하여 준수할 수 있도록 교육 등 윤리 지원활동을 제공하며 준수 서약을 받고 있습니다.</p><br>
                                                                    <p class="para">또한, 2025년에는 우리나라의 ‘부정 청탁 및 금품 등 수수의 금지에 관한 법률(청탁금지법)’ , 미국의 ‘해외부패방지법(Foreign Corrupt Practices Act)’, ‘영국의 뇌물방지법(UK Bribery Act)’ 등 국내외 부패방지법령은 물론 OECD와 UN의 부패방지협약의 내용을 반영한 뇌물수수 및 부패방지 준수 규정을 제정하여 구성원이 회사 업무에 반영하도록 하였습니다.</p><br>
                                                                    <p class="para">SK네트웍스는 윤리경영 수준을 강화하기 위해 2022년 12월 부패방지경영시스템(ISO 37001) 인증을 획득하였으며, 윤리경영 수준을 지속적으로 고도화 해 나갈 예정입니다.</p>
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="btn-display">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/거버넌스/윤리규범/SKN_윤리규범.pdf"><span class="btn-text">윤리규범 다운로드</span></a>
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/거버넌스/윤리규범/(SKN사규-I-04) 윤리규범 실천 가이드라인.pdf"><span class="btn-text">윤리규범 실천 가이드라인 다운로드</span></a>
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/ko/sustainability/governance/ethical/(SKN)뇌물수수 및 부패방지 준수규정.pdf"><span class="btn-text">뇌물수수 및 부패방지 준수 규정</span></a>
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/거버넌스/윤리규범/협력사 윤리실천 서약서.pdf"><span class="btn-text">협력사 윤리실천 서약서 다운로드</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1 ethical-system">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">윤리제도 (Compliance)</h4>
                                                                    </div>
                                                                    <p class="para">SK네트웍스는 윤리경영을 체계적으로 운영하기 위해, 이사회 산하 감사위원회 직속의 감사실을 윤리경영 전담 조직으로 두고 있습니다. 감사위원회는 회계 및 경영진 업무를 감독하고, 리스크 관리와 윤리경영 관련 계획 및 이행 결과를 검토·승인하는 윤리경영 관련 최고 의사결정기구로 기능합니다.</p>
                                                                    <p class="para">감사위원회 직속 조직인 감사실은 윤리경영의 추진 계획 수립과 이행 관리를 총괄하며, 이를 감사위원회에 보고하여 검토 및 승인을 받습니다. 또한 윤리경영 문화가 조직 내에 안착될 수 있도록 다양한 제도와 프로그램을 운영하고, 윤리경영 현황을 지속적으로 모니터링하며 필요한 개선 활동도 추진합니다.</p>
                                                                    <p class="para">감사실은 내부감사 수행 외에도, 비윤리 행위에 대한 조사, 자회사 내부감사 조직과의 협의체 운영 등 윤리 실천 전반을 지원하고 있습니다. 이와 관련된 주요 감사 계획, 내부감사 결과, 기업윤리 관련 조치 사항은 분기별로 감사위원회에 보고 및 의결을 받고 있으며, 필요 시 수시 보고를 통해 운영의 투명성을 높이고 있습니다.</p>
                                                                    <div class="btn-display">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/ko/sustainability/governance/ethical/감사위원회_검토_내역.pdf"><span class="btn-text">감사위원회 검토 내역 다운로드</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <div class="post-list design5 case2 type2">
                                                                        <div class="post-item">
                                                                            <div class="post-wrap">
                                                                                <div class="post-head">
                                                                                    <em class="post-subject">윤리경영협의체 구성</em>
                                                                                </div>
                                                                                <div class="post-figure">
                                                                                    <img src="/assets/images/sustainability/compliance.svg" alt="윤리경영협의체 구성에 관한 이미지 입니다. 자세한 내용은 하단을 참고해주세요." class="pc-only">
                                                                                    <img src="/assets/images/sustainability/compliance-mo.png" alt="윤리경영협의체 구성에 관한 이미지 입니다. 자세한 내용은 하단을 참고해주세요." style="min-width: 600px;" class="mo-only">
                                                                                    <div class="post-body blind">
                                                                                        <strong>SK네트웍스 감사위원회</strong>
                                                                                        <ul>
                                                                                            <li>윤리경영협의체장 : SK네트웍스 감사실장</li>
                                                                                            <li>워커힐 경영지원실장, SK네트웍스서비스 경영전략실장, SK매직 RM실장</li>
                                                                                            <li>윤리경영협의체
                                                                                                <ul>
                                                                                                    <li>SK네트웍스(간사) : 윤리경영팀장, 윤리경영담당자</li>
                                                                                                    <li>워커힐 : 윤리경영담당자</li>
                                                                                                    <li>SK네트웍스서비스 : 준법경영팀장, 윤리경영담당자</li>
                                                                                                    <li>SK매직 : 경영진단팀장, 윤리경영담당자</li>
                                                                                                    <li>민팃 : 업무지원팀장, 윤리경영담당자</li>
                                                                                                    <li>엔코아 : 경영지원실장, 윤리경영담당자</li>
                                                                                                    <li>SK스피드메이트 : 기획재무팀장, 윤리경영담당자</li>
                                                                                                    <li>Glowide : 경영지원팀장, 윤리경영담당자</li>
                                                                                                </ul>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <%--<p class="comment design1">※ SK네트웍스가 윤리경영 업무를 Shared Service로 제공하고 있어 해당 자회사는 필요시 윤리경영협의체에 참석</p>--%>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-display design1 case1 type8">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <em class="data-subject">윤리경영협의체 운영</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">SK네트웍스는 본사와 자회사 간 윤리경영 활동의 효과적 수행을 위한 체계구축 및 실천 수준의 고도화를 위해 윤리경영협의체를 2018년부터 운영 중입니다. 각 사 실무진을 중심으로 구성한 분기별 윤리경영실무자협의체 운영을 통해 윤리교육 및 윤리실천 Workshop 등을 함께 기획·시행하고, 각 사별 윤리규정 정립 및 감사수행과 제보 조사 관련 지원, 윤리담당 구성원 역량 강화 등 다양한 활동을 수행하고 있습니다. SK네트웍스는 윤리경영협의체 활동을 통해 각 자회사의 독자적인 윤리경영기능을 지속적으로 고도화해 나갈 것입니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <em class="data-subject">자정시스템 운영</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">
                                                                                            SK네트웍스는 자율적인 윤리경영 실천력을 강화하기 위해 법·윤리적 규범을 준수하고 부정과 비리를 예방 및 통제하는 자정 점검 시스템을 운영하고 있습니다. 이를 통해 연 1회 본사 및 자회사를 대상으로 업무 영역별 윤리 리스크에 대한 체크리스트를 구성하여 리스크를 평가하고 점검합니다.<br>
                                                                                            체크리스트는 HR관리, 비용관리, 구매 및 비즈니스 파트너 관리, 매출·채권 관리, 투자 관리 체계, 재고 관리 등으로 구성되어 있으며, 다양한 분야에서 업무별 특성에 맞는 윤리 및 반부패 리스크를 식별하고 예방하는 것을 목표로 합니다. 또한, 매년 점검 항목을 추가하여 지속적으로 개선하고 있으며, 특히 고위험 항목에 대해서는 감사실 및 자회사 내부감사 부서가 직접 점검을 수행합니다. 이를 통해 각 조직이 자체적으로 수행한 점검 결과와 증빙의 적합성을 검토하고, 윤리경영 체계를 보다 강화하고 있습니다.                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case2 type8 align1 bg-color">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">제보 채널 운영</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK네트웍스는 모든 이해관계자가 비윤리적 행위를 자유롭게 신고할 수 있도록 웹사이트, 대면상담, 우편 등 다양한 오/오프라인 윤리 제보 채널을 운영하고 있습니다.<br class="pc-only"> 접수된 제보는 감사팀과 각 자회사의 윤리경영 전담 조직이 면밀히 조사하며, 공정하고 투명한 절차를 통해 처리하고 있습니다. 또한 고객서비스 관련 불만은 해당 사업부서로 이관하여 신속히 처리될 수 있도록 조치하고 있습니다.<br>
                                                                        제보자의 신변 보호를 최우선으로 고려하여 보호 규정을 마련하고, 정당한 제보로 인해 어떠한 불이익도 발생하지 않도록 철저히 관리하고 있습니다.<br class="pc-only"> 더불어, 제보 관련 조사에 협조한 임직원도 제보자와 동일한 수준으로 보호함으로써, 윤리경영 실천을 위한 안전한 환경을 조성하고 있습니다.
                                                                    </p>
                                                                </div>
                                                                <div class="section-figure">
                                                                    <img src="/assets/images/sustainability/channel.png" alt="" class="pc-only">
                                                                    <img src="/assets/images/sustainability/channel-m.png" alt="" style="min-width: 33.9rem;width: 100%" class="mo-only">
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="data-display design1 case8 type6">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <em class="data-subject">인터넷</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para"><a href="http://ethics.sk.co.kr" target="_blank" title="새창 열기">http://ethics.sk.co.kr</a></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <em class="data-subject">우편</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">서울특별시 종로구 청계천로 85, SK네트웍스 감사팀</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="btn-display align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://ethics.sk.co.kr" target="_blank" title="새창 열기"><span class="btn-text">윤리경영 홈페이지 바로가기</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">공감대 형성 (Consensus)</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <ul class="board-list design15 case1 type1">
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-info">
                                                                                    <strong class="board-name">윤리교육 정책</strong>
                                                                                    <p class="para">SK네트웍스는 매년 계약직, 시간제 정규직을 포함한 전 구성원을 대상으로 윤리 교육을 실시하고 있으며, 100% 교육 참석 및 수료를 목표로 하고 있습니다. 2021년 9월부터는 경영진 및 이사회 대상으로 윤리 교육 프로그램을 별도로 개발하여 운영 중이며, 2022년부터는 협력사 대상 윤리 교육 프로그램을 제공하여 윤리경영 실천에 대한 공감대를 확대해 가고 있습니다. 윤리 교육에서는 부패방지, 갑질 행위, 근무 태도 등 SK네트웍스의 주요 윤리경영 이슈를 다루며, 윤리 교육 수강자들을 대상으로 교육효과성, 교육난이도, 교육환경 등에 대한 교육 만족도 조사를 실시하여 구성원들의 의견을 바탕으로 교육체계 및 콘텐츠를 개선하고 있습니다. 경영진 및 이사회, 협력사 대상 윤리 교육 프로그램도 급변하는 대내외 경영환경 등을 반영하여 매년 양적/질적으로 개선해 나갈 계획입니다.
                                                                                    </p>
                                                                                </div>
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/law-princ.png" alt="" class="pc-only">
                                                                                    <img src="/assets/images/sustainability/law-princ-m.png" alt="" class="mo-only">
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-display design1 case2 type2">
                                                                                <div class="data-list">
                                                                                    <div class="data-item">
                                                                                        <div class="data-head">
                                                                                            <strong class="data-subject">윤리 교육 시행 성과</strong>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                <table style="min-width: 1084px;" class="col-w-1">
                                                                                                    <caption>이 표는 윤리 교육 시행 성과를 제공하며 구분, 2019년, 2020년, 2021년, 2022년, 2023년, 2024년으로 구성되어 있습니다.</caption>
                                                                                                    <colgroup>
                                                                                                        <col class="col1">
                                                                                                        <col class="col2">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                    </colgroup>
                                                                                                    <thead>
                                                                                                        <tr>
                                                                                                            <th scope="col" colspan="2">구분</th>
                                                                                                            <th scope="col">2019</th>
                                                                                                            <th scope="col">2020</th>
                                                                                                            <th scope="col">2021</th>
                                                                                                            <th scope="col">2022</th>
                                                                                                            <th scope="col">2023</th>
                                                                                                            <th scope="col">2024</th>
                                                                                                        </tr>
                                                                                                    </thead>
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td rowspan="2">SK네트웍스 및 자/손회사*</td>
                                                                                                            <td>이수한 임직원 수 (단위 : 명)**</td>
                                                                                                            <td>4,635</td>
                                                                                                            <td>4,922</td>
                                                                                                            <td>4,866</td>
                                                                                                            <td>4,913</td>
                                                                                                            <td>4,862</td>
                                                                                                            <td>3,361</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>이수한 임직원 비율 (단위 : %)</td>
                                                                                                            <td>98.4</td>
                                                                                                            <td>97.8</td>
                                                                                                            <td>98.5</td>
                                                                                                            <td>99.2</td>
                                                                                                            <td>99.4</td>
                                                                                                            <td>99.5</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td rowspan="2">협력사***</td>
                                                                                                            <td>교육 시행여부 (단위 : 시행)</td>
                                                                                                            <td>N</td>
                                                                                                            <td>N</td>
                                                                                                            <td>N</td>
                                                                                                            <td>Y</td>
                                                                                                            <td>Y</td>
                                                                                                            <td>Y</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>이수한 협력사 수 (단위 : 개)</td>
                                                                                                            <td></td>
                                                                                                            <td></td>
                                                                                                            <td></td>
                                                                                                            <td>32</td>
                                                                                                            <td>10</td>
                                                                                                            <td>13</td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </div>
                                                                                            <p class="comment design1">* 2019년 ~ 2021년은 6개사(SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK매직서비스, SK렌터카, SK렌터카서비스) 대상, 2022년 ~ 2023년은 8개사(기존 6개사 + 민팃, 카티니) 대상이며, 2024년부터 5개사(SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, 민팃, SK일렉링크)대상임<br>
                                                                                                ** 2022년부터 사외이사, 비정규직 포함<br>
                                                                                                *** 2022년부터 SK네트웍스 본사와 거래하는 협력사 대상으로 Pilot 운영함</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-info">
                                                                                    <strong class="board-name">윤리실천 Survey</strong>
                                                                                    <p class="para">SK네트웍스는 매년 윤리규범 준수 및 윤리 실천 문화 수준 진단을 위해 본사 및 자회사 구성원을 대상으로 윤리실천 Survey를 실시하고 있습니다. 설문조사 결과에 따라 구성원 간 상호 윤리, 사회적 가치 저해 요소 점검, 윤리경영 실천 제도 지속 개선 등 중요 시사점을 관리하여 구성원에 대한 윤리경영을 지원합니다.</p>
                                                                                </div>
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/box.png" alt="" class="pc-only">
                                                                                    <img src="/assets/images/sustainability/box-m.png" alt="" class="mo-only">
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-display design1 case2 type2">
                                                                                <div class="data-list">
                                                                                    <div class="data-item">
                                                                                        <div class="data-head">
                                                                                            <strong class="data-subject">윤리실천 Survey 시행 성과</strong>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                <table style="min-width: 1102px;" class="col-w-1">
                                                                                                    <caption>이 표는 윤리실천 Survey 시행 성과를 제공하며 구분, 2019년, 2020년, 2021년, 2022년, 2023년, 2024년으로 구성되어 있습니다.</caption>
                                                                                                    <colgroup>
                                                                                                        <col class="col1">
                                                                                                        <col class="col2">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                    </colgroup>
                                                                                                    <thead>
                                                                                                        <tr>
                                                                                                            <th scope="col" colspan="2">구분</th>
                                                                                                            <th scope="col">2019</th>
                                                                                                            <th scope="col">2020</th>
                                                                                                            <th scope="col">2021</th>
                                                                                                            <th scope="col">2022</th>
                                                                                                            <th scope="col">2023</th>
                                                                                                            <th scope="col">2024</th>
                                                                                                        </tr>
                                                                                                    </thead>
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td rowspan="2">SK네트웍스 및 자/손회사*</td>
                                                                                                            <td>참여한 임직원 수 (단위 : 명)</td>
                                                                                                            <td>3,705</td>
                                                                                                            <td>3,537</td>
                                                                                                            <td>4,125</td>
                                                                                                            <td>3,985</td>
                                                                                                            <td>3,963</td>
                                                                                                            <td>2,883</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>참여한 임직원 비율 (단위 : %)</td>
                                                                                                            <td>76.0</td>
                                                                                                            <td>68.8</td>
                                                                                                            <td>82.1</td>
                                                                                                            <td>79.7</td>
                                                                                                            <td>81.8</td>
                                                                                                            <td>85.9</td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </div>
                                                                                            <p class="comment design1">* 2019년 ~ 2021년은 6개사(SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK매직서비스, SK렌터카, SK렌터카서비스) 대상, 2022년 ~ 2023년은 8개사(기존 6개사 + 민팃, 카티니) 대상이며, 2024년부터 5개사(SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, 민팃, SK일렉링크)대상임</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-info">
                                                                                    <strong class="board-name">윤리경영 실천 서약</strong>
                                                                                    <p class="para">매년 첫 영업일에는 전 구성원이 윤리경영 실천 서약에 동참합니다. 구성원들의 자발적 실천을 통해 윤리경영에 대한 인식을 확대하며 투명하고 깨끗한 기업문화를 조성하는 데 기여하고자 합니다.</p>
                                                                                </div>
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/meeting.png" alt="" class="pc-only">
                                                                                    <img src="/assets/images/sustainability/meeting-m.png" alt="" class="mo-only">
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-info">
                                                                                    <strong class="board-name">윤리실천 Workshop</strong>
                                                                                    <p class="para">SK네트웍스는 구성원 윤리경영 수준을 높이기 위해 매년 전 구성원 대상으로 윤리실천 Workshop 을 시행하고 있습니다. 윤리실천 Workshop에서는 ‘직장 내 괴롭힘’, ‘직무상 이해 상충’ 등 윤리 이슈에 대한 동영상 시청 혹은 사전 공유 자료 숙지 후 토론을 진행하며, 윤리경영 실천을 위한 개선 사항을 공유합니다. 또한 자회사 포함 각 사별 윤리실천문화 내재화를 위해 ‘윤리실천 Workshop 우수조직’을 선발하여 시상합니다.</p>
                                                                                </div>
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/talk.png" alt="" class="pc-only">
                                                                                    <img src="/assets/images/sustainability/talk-m.png" alt="" class="mo-only">
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-display design1 case2 type2">
                                                                                <div class="data-list">
                                                                                    <div class="data-item">
                                                                                        <div class="data-head">
                                                                                            <strong class="data-subject">윤리실천 Workshop 시행 성과</strong>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                <table style="min-width: 1014px;" class="col-w-1">
                                                                                                    <caption>이 표는 윤리경영 실천 Workshop 시행 성과를 제공하며 구분, 2019년, 2020년, 2021년, 2022년, 2023년, 2024년으로 구성되어 있습니다.</caption>
                                                                                                    <colgroup>
                                                                                                        <col class="col1">
                                                                                                        <col class="col2">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                        <col class="col3">
                                                                                                    </colgroup>
                                                                                                    <thead>
                                                                                                        <tr>
                                                                                                            <th scope="col" colspan="2">구분</th>
                                                                                                            <th scope="col">2019</th>
                                                                                                            <th scope="col">2020</th>
                                                                                                            <th scope="col">2021</th>
                                                                                                            <th scope="col">2022</th>
                                                                                                            <th scope="col">2023</th>
                                                                                                            <th scope="col">2024</th>
                                                                                                        </tr>
                                                                                                    </thead>
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td rowspan="2">SK네트웍스 및 자/손회사*</td>
                                                                                                            <td>참여한 조직 수 (단위 : 개)</td>
                                                                                                            <td>414</td>
                                                                                                            <td>393</td>
                                                                                                            <td>549</td>
                                                                                                            <td>419</td>
                                                                                                            <td>393</td>
                                                                                                            <td>414</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>참여한 조직 비율 (단위 : %)</td>
                                                                                                            <td>95</td>
                                                                                                            <td>98</td>
                                                                                                            <td>98</td>
                                                                                                            <td>98</td>
                                                                                                            <td>99.8</td>
                                                                                                            <td>100</td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </div>
                                                                                            <p class="comment design1">* 2019년 ~ 2021년은 6개사(SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK매직서비스, SK렌터카, SK렌터카서비스) 대상, 2022년 ~ 2023년은 8개사(기존 6개사 + 민팃, 카티니) 대상이며, 2024년부터 5개사(SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, 민팃, SK일렉링크)대상임</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case2 type1 internal-audit">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">내부감사 시행 (윤리/반부패 감사)</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK네트웍스의 내부감사는 이사회 산하 감사위원회의 직속 조직인 감사실에서 시행하고 있으며, 내부감사는 정기감사 및 이행 점검, 자정 점검, 윤리 제보조사로 구성되어 있습니다. SK네트웍스는 국내외 모든 사업장과 자회사, 지원조직을 대상으로 주기적인 내부감사를 수행하고 있으며, 비윤리적 리스크를 사전에 제거하고 부정 탐지활동이 효과적으로 수행될 수 있도록 관리 리스크에 대한 내부감사 활동을 점진적으로 강화하고 있습니다.</p>
                                                                    <div class="para">
                                                                        <div class="bullet-display design1 case1 type6">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">정기감사는 매년 말 자회사 포함 국내외 전 사업 및 지원조직을 대상으로 리스크 평가를 실시하고, 위험도가 높은 사업/조직을 대상으로 연간 정기감사 계획을 수립하여 감사위원회의 승인 후 시행되며, 감사 결과와 권고사항 이행 점검은 시스템을 통해 지속 점검하고 주기적으로 감사위원회에 보고하여 실행력을 높이고 있습니다. 자회사 포함 국내외 전 사업 및 지원조직을 대상으로 3년에 1회 이상 감사하는 것을 목표로 하고 있습니다.</li>
                                                                                <li class="data-item">SK네트웍스는 매년 1회, 모든 사업장, 지원조직, 자회사를 대상으로 HR, 비용, 구매, 비즈니스 파트너 등 다양한 영역의 윤리 및 반부패 리스크를 실무 조직이 자율적으로 점검하고 평가하는 '자정시스템 점검'을 시행하고 있습니다. SK네트웍스 감사실과 자회사 내부감사 부서는 이 중 고위험 항목을 직접 점검하고, 실무 조직의 점검 결과 및 관련 증빙의 적정성을 확인합니다.  이를 통해 회사는 주요 기능별 내부통제 수준을 지속적으로 진단하고 개선해 나가고 있습니다.</li>
                                                                                <li class="data-item">SK네트웍스 및 모든 자회사는 웹사이트, 대면 상담, 우편 등 다양한 온/오프라인 윤리 제보 채널을 운영하고 있습니다. 제보 처리 절차에 따라 접수된 상담∙제보 사항을 투명하고 공정하게 처리하고 있습니다. 고객 서비스 불만은 해당 사업부서에 이관하여 처리하도록 안내하고 있으며, 비윤리 이슈를 포함한 모든 제보는 감사실과 자회사 내부감사 부서에서 직접 조사*를 진행하고 있습니다.</li>
                                                                            </ul>
                                                                        </div>
                                                                        <p class="comment design1">* 자회사 접수 건에 대해서는 자회사와 협조를 통해 조사 진행</p>
                                                                    </div>
                                                                    <p class="para">내부감사 결과를 바탕으로 위반사항이 확인될 경우 즉시 개선조치를 이행하고, 개선이 필요한 사항은 경영활동에 반영하며 필요시 관련부서와 협력하여 종합적인 대응방안을 마련합니다.</p>
                                                                    <p class="para">최근 3년간 SK네트웍스는 본사 및 국내외 전 사업장과 자회사를 대상으로 1회 이상의 내부감사를 진행하였으며, 이 과정에서 정보보호(문서보안), 부적절한 업무처리/절차위반, 회사 자산 사적 이용 등의 주요 리스크가 발견되어 시정조치를 완료하고, 관련 사항을 감사위원회에 분기별로 보고했습니다. 또한 전사 공지, 윤리교육, 윤리실천 워크숍 등을 통해 유사 사례 재발을 방지하고 있습니다.</p>
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="btn-display">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/ko/sustainability/governance/ethical/윤리리스크_점검_내역.pdf"><span class="btn-text">윤리 리스크 점검 내역</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- tab2 -->
                                            <div id="tab-panel2" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-body">
                                                        <div class="section design1 case1 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">공정거래 자율준수 프로그램</h4>
                                                                        <p class="section-summary">SK네트웍스의 공정거래 자율준수 프로그램(CP, Compliance Program)은 기업이 공정거래 관련 법규를 준수하기 위해 자체적으로 제정하여 운영하는 내부 준법 시스템입니다. SK네트웍스는 2002년 CP를 도입하였으며, CP 운영 현황을 매년 이사회 보고 안건으로 상정하고 있습니다.<br> SK네트웍스는 CP 운영을 통하여 구성원들에게 공정거래와 관련된 명확하고 구체적인 행동기준을 제시하고 있으며, 사전 예방 활동을 통해 사업별 운영과정에서 발생할 수 있는 법규 위반 리스크를 최소화하고 있습니다.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1 compliance">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">SK네트웍스 컴플라이언스협의체 운영 </h4>
                                                                        <p class="section-summary">SK네트웍스는 본사(워커힐 포함) 및 8개 자/손회사*로 구성된 ‘SK네트웍스 컴플라이언스협의체’를 운영하며 참여사 모두가 준법경영과 공정경제에 대한 사회적 책임을 다하고 준법 수준을 향상하기 위해 노력하고 있습니다. 협의체는 법무, 공정거래, SHE(안전·보건·환경) 3가지 모듈로 운영되고 있으며, 협의체 활동을 통해 법규 및 제도에 대한 필요 정보 공유, 관련 교육, 각 사별 사례 학습(Lessons Learned) 공유 등 협의체 참여사간 상호작용 활동을 통해 사전 예방 활동과 이슈 대응 능력을 강화하고 있습니다.</p>
                                                                    </div>
                                                                    <p class="comment design1">* SK네트웍스서비스, SK매직, SK매직서비스, 민팃, SK일렉링크, 엔코아, SK스피드메이트, Glowide</p>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="board-name">SK네트웍스 Compliance 협의체</p>
                                                                    <ul class="board-list design17 case1 type1">
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/company.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">참여사</em>
                                                                                    <p class="para">본사(워커힐 포함) 및<br> 8개 자/손회사</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/modal.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">모듈</em>
                                                                                    <p class="para">법무/공정거래/SHE</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/team.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">구성원 수</em>
                                                                                    <p class="para">52명<br> (2025년 기준)</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/act.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">주요 활동</em>
                                                                                    <p class="para">컴플라이언스 민감도 제고 및<br class="pc-only"> 대응 능력, 공동교육 </p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case1 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">공정거래 자율준수 조직</h4>
                                                                        <p class="section-summary">SK네트웍스는 이사회에서 자율준수 관리자를 선임하고, 자율준수 전담 조직을 운영하고 있습니다. 자율준수 조직체계를 통해 윤리와 관련한 중요 이슈를 도출하여 각 사업의 공정거래 관련 법 준수 현황 점검, 공정 경제 촉진, 거래 투명성 제고 및 공정거래 관련 주요 정책을 유관 사업 부서와 공유하는 등 자율준수 기반을 마련하고 있습니다.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- tab3 -->
                                            <div id="tab-panel3" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <%--<div class="panel-head">
                                                    </div>--%>
                                                    <div class="panel-body">
                                                        <div class="section design1 case10">
                                                            <div class="section-wrap">
                                                                <div class="section-body">
                                                                    <div class="section-figure">
                                                                        <img src="/assets/images/sustainability/policy-corruption.jpg" alt="부패방지방침 이미지입니다. 설명은 하단 내용을 참고하세요." style="min-width: 33.9rem;width: 100%">
                                                                        <div class="blind">
                                                                            <div>
                                                                                <strong>부패방지방침</strong>
                                                                                <p>SK네트웍스는 구성원과 이해관계자의 지속적인 행복을 추구하고 공정하고 투명한 기업문화를 구축하고자 ‘부패방지방침’을 아래와 같이 정하여 운영합니다.</p>
                                                                                <ol>
                                                                                    <li>SK네트웍스의 모든 구성원은 부패와 관련된 행위를 하지 않습니다.</li>
                                                                                    <li>SK네트웍스의 모든 구성원은 업무 활동에 적용되는 부패 관련 국내·외 법률 및 당사의 규정·지침을 준수합니다.</li>
                                                                                    <li>SK네트웍스는 글로벌 기준에 부합하는 부패방지 경영시스템을 구축하고 이의 실행 및 모니터링을 통해 부패방지경영 수준을 지속적으로 개선합니다.</li>
                                                                                    <li>SK네트웍스는 윤리규범 및 부패방지방침을 준수하지 않은 구성원에 대해서는 관련 규정에 따라 엄정하게 처리하고 그 결과를 구성원들에게 공개합니다.</li>
                                                                                    <li>SK네트웍스는 부패방지를 담당하는 조직 및 구성원에 대해서는 권한 및 독립성을 보장합니다.</li>
                                                                                    <li>SK네트웍스의 모든 경영진은 부패방지 경영시스템이 효율적으로 실행될 수 있도록 모든 지원을 아끼지 않습니다.</li>
                                                                                </ol>
                                                                                <div>
                                                                                    <p>SK네트웍스 주식회사<br>
                                                                                        대표이사 사장 이 호 정</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="btn-display align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/ko/sustainability/governance/ethical/(SKN)뇌물수수 및 부패방지 준수규정.pdf"><span class="btn-text">뇌물수수 및 부패방지 준수 규정</span></a>
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
