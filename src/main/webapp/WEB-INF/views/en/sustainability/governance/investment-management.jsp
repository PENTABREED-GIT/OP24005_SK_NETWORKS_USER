<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-08-02
  Time: 오후 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Investment Management &lt; Governance &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg info-protection" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Governance</span></li>
                            <li class="data-item"><span class="item-text">Investment Management</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Creating Future Value through<br class="pc-only"> Transparent Management</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Investment Management</h3>
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
                    <div class="content-head">Investment Management</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="tab-display design1 case1 type1">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                        <button role="tab" class="tab-text" id="" onclick="tabClickEvent(event)">Investment Management</button>
                                    </li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                        <button role="tab" class="tab-text" id="esgmanagement" onclick="tabClickEvent(event)">ESG management of first/second-tier subsidiaries</button>
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
                                                        <h4 class="section-name">Investment Committee</h4>
                                                        <p class="section-summary">SK Networks operates an ‘Investment Committee’ to review, deliberate, and make decisions on new investment and disposal, strategic suitability for significant changes in corporate governance, rationality and adequacy of execution, economic feasibility, and risk.</p>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-figure">
                                                        <img src="/assets/images/sustainability/esg-ivestment-bg.jpg" alt="the way people gather to have a meeting">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case1 type1 configuration">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Roles &amp; Organization of the Investment Board</h4>
                                                        <p class="section-summary">The investment board discusses investment propositions forwarded from pre-reviews in terms of business environment, finance, legal affairs, ESG, and others. and makes a final decision. The working-level investment council moderates risk-focused pre-reviews of investment propositions before forwarding them to the investment board.</p>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        Before an investment proposal is submitted to the Investment Review Working Group, the Agenda Review Committee conducts a preliminary assessment to determine
                                                        whether the proposal qualifies for submission to the Investment Committee <sup>1)</sup>. The Red Team serves as a dedicated oversight body, formed on a temporary basis for each proposal, and operates independently from the initiating department to analyze risk factors and assess investment feasibility<sup>2)</sup>. For proposals requiring Board approval, the Red Team submits its findings,
                                                        including worst-case scenarios projections, separately to both the Investment Committee and the Board of Directors <sup>3)</sup>.
                                                    </p>
                                                    <p class="comment design1">
                                                        1) The Internal members of the Agenda Review Committee are the same as those of the Investment Review Working Group<br>
                                                        2) The Red Team operates as a virtual task force under the Chief Financial Officer (CFO), led by the Head of Risk Management and composed of team members from the Investment Review Working Group<br>
                                                        3) Proposals involving changes to existing investment amounts or expansions of ongoing businesses are generally excluded from review. However, exceptions may be granted subject to management’s decision and approval by the Agenda Review Committee.
                                                    </p>
                                                    <div class="board-list design13">
                                                        <div class="board-item type1">
                                                            <div class="board-wrap">
                                                                <div class="board-head">
                                                                    <em class="board-subject">Investment Board</em>
                                                                </div>
                                                                <div class="board-body">
                                                                    <div class="bullet-display design1 case1 type6">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">Members: CEO, COO, Head of AI Division, Head of the Management Supporting Division, Head of Strategy Planning Division, Head of RM Division, Head of Sustainability Management Division</li>
                                                                            <li class="data-item">Secretary: Head of AI Portfolio Innovation Division</li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="board-item type2">
                                                            <div class="board-wrap">
                                                                <div class="board-head">
                                                                    <em class="board-subject">Investment Review Working Group<br>
                                                                        / Agenda Review Committee</em>
                                                                </div>
                                                                <div class="board-body">
                                                                    <div class="bullet-display design1 case1 type6">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">Members: Global Investment Group Team Leader, Strategy Planning Team Leader, Finance Team Leader,  Accounting Team Leader, Tax Team Leader, Legal Team Leader, ESG Management Team Leader, RM Part Leader</li>
                                                                            <li class="data-item">In the case of purchasing for investment, Supply Chain and Asset Management Team Leader is also included</li>
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
                                                        <h4 class="section-name">Investment Process</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="data-figure">
                                                        <img src="/assets/images/sustainability/esg-ivestment-diagram-03-en.svg" alt="This is an image of the investment committee operating process. Please refer to the bottom for more information." class="pc-only">
                                                        <img src="/assets/images/sustainability/esg-ivestment-diagram-03-mo-en.svg" alt="This is an image of the investment committee operating process. Please refer to the bottom for more information." class="mo-only">
                                                        <div class="blind">
                                                            <ul>
                                                                <li>
                                                                    <em>Initiating Department</em>
                                                                </li>
                                                                <li>
                                                                    <em>Agenda Review Committee</em>
                                                                </li>
                                                                <li>
                                                                    <em>Investment Review Working Group</em>
                                                                </li>
                                                                <li>
                                                                    <em>Investment Committee or Internal Investment Committee</em>
                                                                </li>
                                                                <li>
                                                                    <em>Result Notification</em>
                                                                </li>
                                                                <li>
                                                                    <em>Board Resolution</em>
                                                                </li>
                                                                <li>
                                                                    <em>Shareholders' Meeting</em>
                                                                </li>
                                                                <li>
                                                                    <span>※ Decision Criteria: Strategic Alignment, Risk & Compliance (R&C) Strategy, Valuation, Milestones, Key Issues & Contingency Plans, ESG/Social Value (SV), Exit Plan, and other relevant factors</span>
                                                                    <span>※ Investment Committee Approval Criteria: Approval requires the attendance of at least two-thirds of all committee members and the affirmative vote of at least two-thirds of those present.</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <p class="comment design1">* Where an investment proposition is subject to an approval by the board of directors, it is to be deliberated in advance by the ESG Management Committee and finally reviewed and approved by the board of directors.</p>
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
                                                    <p class="para">SK Networks has classified first-tier subsidiaries and two second-tier subsidiaries into three groups taking into consideration their listing status, equity holding ratio, and growth stage and specified ESG management visions and targets per subsidiary group. Each subsidiary will improve their ESG management standards phase-wise by defining and achieving short to mid-term targets per ESG metric.</p>
                                                    <div class="data-display design1 case9 type7">
                                                        <div class="data-list">
                                                            <div class="data-item bg-shadow-layout case2">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <em class="data-subject">ESG management standards &amp; visions of first/second-tier subsidiaries</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="data-display design3 case3 type3">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">Listed/non-listed</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">For listed subsidiaries, select extensive management metrics similar to those adopted by the parent company and improve performance on a variety of ESG metrics</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">Equity holding ratio (80% or higher)</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">For non-listed subsidiaries in which the parent company holds 80% or more of equity, select their ESG performance to a standard similar to that of listed subsidiaries</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">Growth stage (in terms of time elapsed from spin-off)</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">For new subsidiaries (two years or less from spin-off), select and manage a minimum set of essential ESG metrics and then expand the scope of ESG management step by step considering their industrial characteristics/growth level</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="data-item">
                                                                                    <div class="data-wrap">
                                                                                        <div class="data-head">
                                                                                            <div class="data-subject">
                                                                                                <p class="num"></p>
                                                                                                <p class="tit">First/second-tier subsidiaries</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <p class="para">Empower first-tier subsidiaries to manage and align the ESG performance of second-tier subsidiaries to their ESG vision and targets</p>
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
                                                    <p class="para">We aim to enhance the ESG standards of listed and unlisted subsidiaries (with over 80% ownership & in the growth stage) by conducting status checks, implementing short/mid-term tasks, and publishing sustainability reports. Our ultimate goal is to have all subsidiaries/sub-subsidiaries reach top-tier levels by 2026. Furthermore, to reinforce execution capabilities, SK Networks holds SV Meetups where executives, team leaders, and working-level employees from business units/subsidiaries gather to share and discuss ESG initiative progress for each business, fostering mutual learning.</p>
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
                                                                                <li class="data-item">Develop an ESG management policy for first/second-tier subsidiaries (2022)</li>
                                                                                <li class="data-item">Monitor the ESG status of major subsidiaries, specify short to mid-term targets and perform short-term tasks</li>
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
                                                                                <li class="data-item">Monitor the ESG status of major subsidiaries regularly and have them perform mid-term tasks to bring their ESG performance up to the SK networks level (2025)</li>
                                                                                <li class="data-item">Perform short/mid/long-term tasks aligned with the ESG level of each first/second-tier subsidiary group</li>
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
                                                                                <li class="data-item">Ensure that all first/second-tier subsidiaries reach a global top-tier level (7 subsidiaries now)</li>
                                                                                <li class="data-item">Upgrade ESG management policies (key metrics) of first/second-tier subsidiaries (e.g. selection of subsidiary-specific indicator)</li>
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
                                                        <h4 class="section-name">ESG Management Performance/Achievement</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="bullet-display design1 case1 type6">
                                                        <ul class="data-list">
                                                            <li class="data-item">Since 2020, the SV Meetup has been organized, involving all business units/subsidiaries, to monitor and manage the ESG status across these subsidiaries and sub-subsidiaries.</li>
                                                            <li class="data-item">SK Networks and eight subsidiaries and sub-subsidiaries committed to Net Zero 2040 in 2021, joined the EV100 initiative in 2021, signed up for the SBTi in September 2022, and received target approval in August 2023.</li>
                                                            <li class="data-item">Disclosure of significant ESG achievements from SK Magic, SK Networks Service, as highlighted in SK Networks' Sustainability Report.</li>
                                                            <li class="data-item">Phased ESG performance evaluation and disclosure by each subsidiary (since 2022)</li>
                                                        </ul>
                                                    </div>
                                                    <%--<p class="comment design1">* Priority management indicators include human rights declarations and policies, employee safety, corporate data and information protection, anti-corruption policies, and employee anti-corruption education.</p>--%>
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
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>
