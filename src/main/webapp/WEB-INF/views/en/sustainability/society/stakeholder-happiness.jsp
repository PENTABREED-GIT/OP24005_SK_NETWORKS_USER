<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Stakeholder Happiness &lt; Society &lt; Sustainability &lt; SK Networks</title>
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg understand" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Society</span></li>
                            <li class="data-item"><span class="item-text">Stakeholder Happiness</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Managing Business for<br class="pc-only">
                            a Sustainable Society</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Stakeholder Happiness</h3>
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
                    <div class="content-head">Stakeholder Happiness</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="tab-display design1 case2 type2">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                        <button role="tab" class="tab-text" id="stakeholder-communication" onclick="tabClickEvent(event)">Stakeholder Communication</button>
                                    </li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                        <button role="tab" class="tab-text" id="supplychain" onclick="tabClickEvent(event)">Sustainable Supply Chain</button>
                                    </li>
                                    <li id="tab3" class="swiper-slide tab-item" aria-controls="tab-panel3">
                                        <button role="tab" class="tab-text" id="seecosystem" onclick="tabClickEvent(event)">Local Communities and Support SE ecosystem</button>
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
                                                        <h4 class="section-name">Stakeholder Communication</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK Networks defines all entities that directly and indirectly impact and are affected by our management activities as our stakeholders. Stakeholders include customers, employees, suppliers, the government, shareholders/investors, and local communities. We aim for successful communication with our stakeholders through various engagement channels. By conducting surveys to collect stakeholders’ opinions on our sustainability management policies, we are committed to actively integrating them into our management activities.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1 roadmap">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Stakeholders Channels, Issues and Response Roadmap</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="t-display design1 case2 type1 align1 scroll">
                                                        <table style="min-width: 927px;" class="col-w-1">
                                                            <caption>The table provides stakeholder channel, issue, and response roadmap information and consists of stakeholder, engagement channel, engagement channel, short-term plan (2022 to 2023), short-term plan (2022 to 2023), and long-term plan (2027 onwards).</caption>
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
                                                                    <th scope="col">Stakeholders</th>
                                                                    <th scope="col">Engagement Channels</th>
                                                                    <th scope="col">Key Issues</th>
                                                                    <th scope="col">Short-term<br>Plan(2023)</th>
                                                                    <th scope="col">Mid-term<br>(2024 ~ 2026)</th>
                                                                    <th scope="col">Long-term<br>(2027)</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <!-- 고객 -->
                                                                <tr>
                                                                    <th rowspan="4" scope="col">Customers</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">VOC channels</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Customer satisfaction</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Increasing customer satisfaction</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Ultimately resolving pain points which undermines customer satisfaction and enhancing customer value through BM innovation / creation of new BM</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="4">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Improving customer’s ESG assessment items for each brand (including a review of measures to diversify survey targets)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Customer contact at agencies / branches</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Customized solutions for customers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Developing new products / services</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Creating social value through products / services</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Questionnaires and customer satisfaction surveys</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Personal information protection</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Improving customer contact service</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Website, SNS</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Analyzing and improving brands (adding / modifying ESG assessment items)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Analyzing customer’s ESG assessment trends for each brand</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- //고객 -->
                                                                <!-- 구성원 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="2" scope="col">Employees</th>
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
                                                                                <li class="data-item">Identifying and resolving factors that hinder employees’ happiness and enhancing the ability to execute happiness strategies following the process of [challenge- performance-growth]</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Creating an environment to listen to the opinions of employees and practice ambition by utilizing Culture Surveys</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Improving the happiness diagnosis / measurement system and establishing a sharing system</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Evolve into a platform for innovation in working methods and corporate culture</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Conversation with management</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Strengthening commitment to the management philosophy and activities through communication with the top-level management</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Providing a regular communication channel for sharing CEO messages and management philosophy and building trust</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Providing a channel for direct communication between CEO and employees (Regular communication)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Expanding the channel for direct communication between CEO and employees (Expanding regular communication)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- //구성원 -->
                                                                <!-- 협력사 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="4" scope="col">Suppliers</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Extend financial support to suppliers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Support continuous improvement of business conditions for suppliers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Expand the shared growth fund</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Extend other financial support in addition to the shared growth fund (financial support for ESG-excellent suppliers, etc.)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Continue to upscale such support and expand its scope</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Enhance communication with suppliers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Continuously monitor suppliers’ VOC and incorporate it into corporate policies</li>
                                                                                <li class="data-item">Identify and implement shared growth initiatives</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Design / introduce programs for visiting suppliers and listening to their VOC</li>
                                                                                <li class="data-item">Establish online communication channels</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Visit and listen to VOC - major suppliers (once/year)</li>
                                                                                <li class="data-item">Reflect VOC on purchase policies</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Increase the number of suppliers covered by the VOC program as well as the frequency of the VOC visit</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Support ESG improvement of suppliers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Improve and internalize ESG practices in suppliers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Promote the awareness of the needs for and criticality of ESG management</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Provide consulting for ESG evaluation and improvement by suppliers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Introduce an incentive program for ESG-excellent suppliers and expand support</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Support training programs of suppliers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Enhance the capabilities of suppliers’ employees</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Conduct pilot online training programs for suppliers’ employees</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Expand online training program content for suppliers’ employees and establish it as a regular practice</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Expand offline training for suppliers’ employees concurrently</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- // 협력사 -->
                                                                <!-- 주주/투자자 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="3" scope="col">Shareholders/<br>Investors</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">General shareholders' meeting</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Strengthening two-way communication between the company and shareholders</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Creating an environment for shareholders to ask questions and securing sufficient time</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Diversifying communication channels using online platforms such as conversations with shareholders and live broadcasting of general shareholders' meetings</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Meetings with corporate and private investors</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Expanding the scope and frequency of exposure to SK networks Financial Story</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Communicating with investors frequently and publishing reports</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2" colspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Conducting online and offline IR events tailored to the needs of investors</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Establishing awareness of ESG leading companies and securing ESG investment Demand</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Executing IR in South Korea and overseas for potential investors</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <!-- // 주주/투자자 -->
                                                                <!-- 지역사회 -->
                                                                <tr class="sort-line">
                                                                    <th rowspan="4" scope="col">Local Community</th>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Local governments</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Activating programs for the vulnerable (securing safety nets, providing benefits of cultural programs to the underprivileged, etc.)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Updating social contribution system (2022)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Operating social contribution system</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="3">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Upgrading social contribution system</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Community social security council</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Managing risks of local community</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Identifying community-related risks and deriving pools, and establishing risk management system</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Upgrading community-related risk management system</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Persons in charge at district welfare centers and community centers</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td rowspan="2">
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Realizing contribution to local community and sustainable environment friendly cities</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Securing community consultation channels - Signing of business agreement (MOU) for community contribution (2022, Walkerhill-Gwangjin-gu Office)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Activating content channels for revitalizing culture/tourism (Walkerhill)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Developing and operating community contribution content</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Developing and implementing win-win program for local community</li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="bullet-display design1 case1 type2">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Activating win-win program for local community, measuring and managing performance</li>
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
                                                        <h4 class="section-name">Shared Growth with Suppliers</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="board-display">
                                                        <div class="post-list">
                                                            <div class="post-item">
                                                                <div class="post-wrap">
                                                                    <div class="post-figure">
                                                                        <img src="/assets/images/sustainability/co-growth-pc-en.svg" alt="This is the image of joint growth of partner companies. Please refer to the details below for more information." class="pc-only">
                                                                        <img src="/assets/images/sustainability/co-growth-mo-en.svg" alt="This is the image of joint growth of partner companies. Please refer to the details below for more information." class="mo-only">
                                                                        <div class="blind">
                                                                            <ul>
                                                                                <li>3 Key Strategies for SK Networks to Grow Together with Suppliers</li>
                                                                                <li>Providing Fair Opportunity and Maintaining Procedural Transparency
                                                                                    <ul>
                                                                                        <li>Declaring ethical purchase</li>
                                                                                        <li>Continuously searching for suppliers and providing fair trade opportunities</li>
                                                                                        <li>Ensuring procedural transparency of fair trade throughout supplier selection - contracting – payment settlement</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li>Enhancing the Cooperation System for Shared Growth
                                                                                    <ul>
                                                                                        <li>Building communication channel and listening to VOC</li>
                                                                                        <li>Discovering projects for shared growth</li>
                                                                                        <li>Selecting suppliers with good ESG/SRM assessment results and enhancing the cooperation</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li>Improving Suppliers’ Competitiveness
                                                                                    <ul>
                                                                                        <li>Creating Shared Growth Fund</li>
                                                                                        <li>Preparing support programs for suppliers</li>
                                                                                    </ul>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <p class="comment design1">*SRM : Supplier Relationship Management</p>
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
                                                        <h4 class="section-name">Fair Opportunity and Procedural Transparency</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK Networks' supply chain management performance is reported to the Strategy∙ESG Committee under the Board of Directors, which deliberates on key issues. To ensure the appropriateness of supplier selection and maintain fairness and transparency in purchasing activities, we operate a Purchase Deliberation Committee. The purchasing department convenes the committee to deliberate on applicable purchase transactions*.
                                                    </p>
                                                    <p class="comment design1">* Purchases subject to deliberation include direct contracts worth KRW 500 million or more and competitive bids worth KRW 1 billion or more</p>
                                                    <div class="board-display">
                                                        <div class="post-list design5 case1 type1">
                                                            <div class="post-item">
                                                                <div class="post-wrap">
                                                                    <div class="post-figure">
                                                                        <img src="/assets/images/sustainability/trans-en.png" alt="Procurement Review SK Networks Audit Division Head(1 person), Head of RM Division(1 person), Key Management Executives*(3 persons)" class="pc-only">
                                                                        <img src="/assets/images/sustainability/trans-mo-en.png" alt="Procurement Review SK Networks Audit Division Head(1 person), Head of RM Division(1 person), Key Management Executives*(3 persons)" style="min-width: 63.6rem;" class="mo-only">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p class="comment design1">* Head of Strategy Planning Division, Head of  Corporate Culture Division, Head of  Sustainability Management Division</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Support for Business Partners’ Employee Training</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        In 2024, SK Networks encouraged active participation from business partners by providing online ESG training and funding for training expenses. We expanded our educational content beyond the existing human rights and ethics courses implemented in 2022 to include environmental issues, anti-corruption, and the four major statutory training programs. This initiative aimed to alleviate the educational burden on business partners and support their participation in ESG management. In 2024, 132 employees from 21 business partners voluntarily participated, completing a total of 411 courses (100% completion rate). Moving forward, SK Networks is committed to continuously realizing the value of mutual growth by developing and providing diverse and effective training programs to our business partners.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Protection of Our Partner Companies’ Information</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        Information is the most critical asset for business survival. SK Networks respects the intellectual property rights and trade secrets of our partners and does not force them to pass over technical data or use intellectual property rights when selecting or transacting. Going forward, we will all the more strengthen our information protection system so that the tangible and intangible information of our partner companies can be managed more safely.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Reinforcing the Win-Win Cooperation System</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK Networks deeply empathizes with the hardships faced by suppliers and strives to help them adapt to the rapidly changing business environment. Every year, we visit our suppliers to listen to their views on-site and analyze their opinions to minimize any risks that suppliers may experience. We visited the sites of 48 key suppliers in 2023 and 47 key suppliers in 2024. In 2025, we plan to visit approximately 50 suppliers. Additionally, we share information on matters related to cooperation through the communication forum available through the new procurement system (www.skbuyone.com). We collect opinions and grievances from suppliers through various channels. In 2023, a total of 271 cases were received, and 262 of them were handled (96.7% completion rate) while a total of 132 cases were received and 127 cases were handled (96.2% completion rate) in 2024. Going forward, we will actively incorporate the opinions and requests of our suppliers to enact improvements
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1 growth-fund">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Shared Growth Fund : Improving Suppliers’ Competitiveness</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK Networks is actively participating in SK Group’s shared growth fund and mutual growth programs (CEO seminars, MBAs, etc.). Established in an agreement with IBK, the SKN Shared Growth Fund grants low or no-interest loans to suppliers experiencing economic difficulties due to COVID-19 and the economic downturn, a program that provides funds to partners and reduces loan interest. Particularly, we have expanded the scope to the suppliers of subsidiaries since 2021. We supported Fund of KRW 830 million in 2021, KRW 2.19 billion in 2022, and the maximum level of KRW 4.15 billion in 2023, increasing by more than five times compared to 2021. We plan to continue to maintain the current level
                                                    </p>
                                                    <div class="data-display design1 case2 type1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <em class="data-subject">Status of the Shared Growth Fund</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="t-display design1 case1 type1 align3 scroll">
                                                                            <table style="min-width: 400px;">
                                                                                <caption>This table provides information on the status of the Shared Growth Fund and consists of year, number of partners, and performance.</caption>
                                                                                <colgroup>
                                                                                    <col>
                                                                                    <col>
                                                                                    <col>
                                                                                </colgroup>
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th scope="col">Year</th>
                                                                                        <th scope="col">Number of Suppliers</th>
                                                                                        <th scope="col">Performance</th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>2021</td>
                                                                                        <td>3</td>
                                                                                        <td>KRW 830 million</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>2022</td>
                                                                                        <td>9</td>
                                                                                        <td>KRW 2.19 billion</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>2023</td>
                                                                                        <td>15</td>
                                                                                        <td>KRW 4.15 billion</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>2024</td>
                                                                                        <td>15</td>
                                                                                        <td>KRW 3.77 billion</td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                        <p class="comment design1">* As of the End of December 2024</p>
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
                                                        <h4 class="section-name">Support of shared growth with business partners</h4>
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
                                                                                <li class="data-item">Expand the Shared Growth Fund<br> - Increase by 10% or more compared to 2024</li>
                                                                                <li class="data-item">Expand and operate additional financial support programs</li>
                                                                                <li class="data-item">Identify and implement initiatives for mutual growth</li>
                                                                                <li class="data-item">Support leadership training for middle managers at suppliers</li>
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
                                                                                <li class="data-item">Support invested subsidiaries in implementing the shared growth system</li>
                                                                                <li class="data-item">Establish a foundation for the systematic implementation of the shard growth system.</li>
                                                                                <li class="data-item">Expand the Shard Growth Fund</li>
                                                                                <li class="data-item">Support leadership training for middle managers at suppliers</li>
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
                                                                                <li class="data-item">Re-establish key strategies for shared growth</li>
                                                                                <li class="data-item">Complete the systemization of the shared growth</li>
                                                                                <li class="data-item">Develop new financial support programs beyond the Shard Growth Fund</li>
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
                                                        <h4 class="section-name">Supply Chain ESG</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK Networks seeks to establish sustainable, ethical procurement in terms of ESG (Environment, Society, Governance) as a hedge against possible ESG risks with suppliers and increase corporate value. We have prepared a Supplier Code of Conduct that contains regulations regarding corporate ethics, respect for human rights, safety &amp; health, environment protection, etc. We also provide the Guideline for Sustainable Supply Chains and reflect the aspect of social responsibility in the supplier selection and appraisal process.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Guideline for Sustainable Supply Chains</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        All suppliers of SK Networks should comply with its Guideline for Sustainable Supply Chains. The Guideline defines basic principles related to labor, human rights, safety, health, ethics, fair trade, and general management.
                                                    </p>
                                                    <div class="btn-display align1">
                                                        <div class="btn-area">
                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/사회/이해관계자 행복/2021_social contribution activities.pdf"><span class="btn-text">Supply Chain Sustainability Policy</span></a>
                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/사회/이해관계자 행복/SKN_ESG Guideline for Supply Chains.pdf"><span class="btn-text">Download the Guideline for Sustainable Supply Chains</span></a>
                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/사회/이해관계자 행복/Supplier Code of Conduct(E).pdf"><span class="btn-text">Download the Supplier Code of Conduct</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1 esg-risk">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Supplier ESG Risk Assessment Results</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        SK Networks commissions external evaluation agencies to conduct annual ESG assessments of its suppliers to strengthen ESG risk management. Evaluation targets are selected based on transaction volume, frequency, and business impact. Suppliers with insufficient ESG performance are subject to separate consulting support for improvement to help them set improvement targets and implement improvement measures the following year.
                                                        These activities led to a reduced ratio of high-risk suppliers to 4% in 2024 (vs. 48% in 2023). Key improvement factors include establishing health and safety policies, building an environmental management system, and implementing energy-saving campaigns.
                                                        SK Networks will continue to upgrade suppliers’ ESG risk measurement, evaluation, and management system, helping suppliers prevent ESG risks and practice sustainable management.
                                                    </p>
                                                    <div class="data-display design1 case7 type1 align1">
                                                        <div class="data-list">
                                                            <div class="data-item">
                                                                <div class="data-wrap">
                                                                    <div class="data-head">
                                                                        <em class="data-subject">Supplier ESG Risk Assessment Criteria</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <div class="board-display">
                                                                            <div class="board-list esg-stand">
                                                                                <div class="board-item">
                                                                                    <div class="board-wrap">
                                                                                        <div class="board-figure earth"></div>
                                                                                        <div class="board-name">Environment</div>
                                                                                        <div class="board-body double">
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Environmental Strategy</li>
                                                                                                    <li class="data-item">Environmental Management</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Environmental Performance</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="board-item">
                                                                                    <div class="board-wrap">
                                                                                        <div class="board-figure people"></div>
                                                                                        <div class="board-name">Social</div>
                                                                                        <div class="board-body double">
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Job Security</li>
                                                                                                    <li class="data-item">Terms of Employment</li>
                                                                                                    <li class="data-item">Employment Equality</li>
                                                                                                    <li class="data-item">Social Contribution</li>
                                                                                                    <li class="data-item">Ethical Management</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Health and Safety</li>
                                                                                                    <li class="data-item">Safe Investment</li>
                                                                                                    <li class="data-item">Supply Chain Management</li>
                                                                                                    <li class="data-item">Education</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="board-item">
                                                                                    <div class="board-wrap">
                                                                                        <div class="board-figure law"></div>
                                                                                        <div class="board-name">Governance</div>
                                                                                        <div class="board-body double">
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Business Stability</li>
                                                                                                    <li class="data-item">Accounting Transparency</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="bullet-display design1 case2 type1">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Management System</li>
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
                                                                        <em class="data-subject">Distribution of Suppliers by ESG Risk Group</em>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <img src="/assets/images/sustainability/esg-risk-01-pc-en.svg" alt="This is an image explaining the distribution of partners by ESG risk group." class="pc-only">
                                                                        <img src="/assets/images/sustainability/esg-risk-01-mo-en.png" alt="This is an image explaining the distribution of partners by ESG risk group." class="mo-only" style="min-width: 1000px;">
                                                                        <p class="blind">
                                                                            Severe(RM-7), Weak(RM-6) 2 Suppliers(4%) High Risk Focus Improvement Area. Moderate(RM-5), Good(RM-4), Excellent(RM-3) 46 Suppliers (92%)
                                                                            Medium Risk. Outstanding(RM-2), Top-tier(RM-1) 2 Suppliers(4%) Low Risk. Lowest 1.19, Overall Average 4.86, Highest 9.34. 2023 ClickESG Average 3.55. Overall ESG Risk 4.86, ESG-Risk Good(RM-4). * 2023 ClickESG Results(Third-party verification Criteria) Average Score : 3.55, Highest Score : 9.83
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
                                                        <h4 class="section-name">Business Partners’ ESG Risk Management Roadmap</h4>
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
                                                                                <li class="data-item">Helping suppliers improve ESG performance</li>
                                                                                <li class="bullet-display design1 case3 type1">
                                                                                    <ul class="data-list">
                                                                                        <li class="data-item">Maintain 100% diagnostic coverage*</li>
                                                                                        <li class="data-item">Reduce high-risk suppliers to below 10%</li>
                                                                                        <li class="data-item">Reduce suppliers close to high risk to below 40%</li>
                                                                                        <li class="data-item">Provide improvement consulting for the previous year’s high-risk suppliers</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li class="data-item">Consider expanding ESG incentives for outstanding suppliers</li>
                                                                                <li class="data-item">Support subsidiaries in establishing an ESG-based purchasing management system</li>
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
                                                                                <li class="data-item">Helping suppliers improve ESG performance</li>
                                                                                <li class="bullet-display design1 case3 type1">
                                                                                    <ul class="data-list">
                                                                                        <li class="data-item">Maintain 100% diagnostic coverage</li>
                                                                                        <li class="data-item">Reduce high-risk suppliers to below 5%</li>
                                                                                        <li class="data-item">Reduce suppliers close to high risk to below 20%</li>
                                                                                        <li class="data-item">Provide improvement consulting for the previous year’s high-risk suppliers</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li class="data-item">Consider a penalty system for high ESG risk suppliers</li>
                                                                                <li class="data-item">Support subsidiaries in implementing an ESG-based purchasing management system</li>
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
                                                                                <li class="data-item">Helping suppliers improve ESG performance</li>
                                                                                <li class="bullet-display design1 case3 type1">
                                                                                    <ul class="data-list">
                                                                                        <li class="data-item">Maintain 100% diagnostic coverage</li>
                                                                                        <li class="data-item">Achieve zero high-risk suppliers</li>
                                                                                        <li class="data-item">Reduce suppliers close to high risk to below 10%</li>
                                                                                        <li class="data-item">Provide improvement consulting for the previous year’s high-risk suppliers</li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li class="data-item">Implement a penalty system for high ESG risk suppliers</li>
                                                                                <li class="data-item">Support subsidiaries in implementing an ESG-based purchasing management system (continued)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="comment design1">* Percentage of suppliers under intensive management that have undergone ESG assessment and diagnosis for the past two years</p>
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
                                                        <h4 class="section-name">Social Contribution Policy</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">
                                                        Based on its three principles of ʻHappy Participation, Happy Coexistence, and Happy Changes,’ SK Networks conducts various social contribution activities and strives to contribute to the better changes and sustainable growth of the local community. We pursue social contribution activities in which employees can voluntarily participate through effective support based on core competencies and businesses of employees by making it aligned with our BM. We are expanding the scope of our social
                                                        contribution to all stakeholders who can be affected by our business activities throughout the supply chain, not just the local community near the business site
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case1 type1 social-system">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Social Contribution System</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="post-list design5 case1 type1">
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure">
                                                                    <img src="/assets/images/sustainability/social-en.jpg" alt="The social contribution promotion system is also an image. Please refer to the following for more information." class="pc-only">
                                                                    <img src="/assets/images/sustainability/social-m-en.jpg" alt="The social contribution promotion system is also an image. Please refer to the following for more information." class="mo-only" style="min-width: 33.9rem;width: 100%;">
                                                                    <div class="blind">
                                                                        <strong>Social Contribution System</strong>
                                                                        <div>
                                                                            <div>
                                                                                <em>Happy Participation</em>
                                                                                <ul>
                                                                                    <li>Meaning : All SK networks employees voluntarily and enthusiastically participate in volunteer work.</li>
                                                                                    <li>Activities : ’Happiness+’ Employee Social Contribution Activities, Employee Blood Donation Campaign</li>
                                                                                    <li>
                                                                                        Performance : ‘Happiness+' Social Contribution Activities<br>
                                                                                        1. Plugging: Clearing the natural environment in neighborhood areas<br>
                                                                                        2. Contactless activities: Manufacturing and supporting aid kits for the underprivileged/less advantaged children, etc.<br>
                                                                                        3. Offline activities: Food distribution service, park clean-up activities, etc.<br>
                                                                                        4. Blood donation: All employees working at Samil<br>
                                                                                        Building participate (4 times a year)
                                                                                    </li>
                                                                                    <li>UN SDGs : 1: No Poverty, 2: Zero Hunger, 3: Good Health And Well-Being, 11: Sustainable Cities and Communities, 12: Responsible Consumption and Production, 14: Life Below Water</li>
                                                                                </ul>
                                                                            </div>
                                                                            <div>
                                                                                <em>Happy Coexistence</em>
                                                                                <ul>
                                                                                    <li>Meaning : We achieve a high level of social contribution activities by sharing each other's competencies and techniques as well as maintaining close partnerships with the local community, NGO, government, etc.</li>
                                                                                    <li>Activities : SE support activities, Support for local small business owners, Support for local community through a program linked to BM</li>
                                                                                    <li>Performance : Support for SE advice through Pro bono, In-kind donation to Gwangjin Food Market, Cleanup activities near SpeedMate stores, SK rent-a-car Jeju branch, companion beach cleanup activities</li>
                                                                                    <li>UN SDGs : 1. No Poverty, 2. Zero Hunger, 10: Reduced Inequalities, 11: Sustainable Cities and Communities</li>
                                                                                </ul>
                                                                            </div>
                                                                            <div>
                                                                                <em>Happy Changes</em>
                                                                                <ul>
                                                                                    <li>Meaning : We pursue fundamental social changes with systematic, independent support for problems in the vulnerable class instead of support at temporary and charitable levels.</li>
                                                                                    <li>Activities : Support for the underprivileged and vulnerable, Support for children/youth, Support for student education</li>
                                                                                    <li>Performance : Support for briquettes and kimchi sharing and donations for shantytowns, Education instrument donation for the Children's Museum, Donations for support for educational programs for college students preparing to get a job</li>
                                                                                    <li>UN SDGs : 4: Quality Education, 8: Decent Work And Economic Growth, 10: Reduced Inequalities, 11: Sustainable Cities and Communities, 12: Responsible Consumption and Production, 14: Life Below Water</li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="para">
                                                        SK Networks installed a Company-wide ESG Implementation Committee to internalize ESG management activities and review, deliberate, and decide on the company’s ESG strategies by aligning business strategies. Chief Operating Officer (COO) was appointed as the chair of this committee, and members include the CEO, and COO, the head of Planning and Finance Division, Head of Accounting Division, Head of Sustainability Management Division, and Head of Internal Audit Division. Corporate Culture Division serves as the secretary of the committee. In principle, the Company-wide ESG Implementation Committee holds bi-monthly meetings, but meetings can also be held non-regularly as necessary. This committee discusses the execution of donations to support local communities and protect vulnerable groups, the distribution of resources according to the level of ESG importance, communication methods for different stakeholders, and other agenda items related to ESG
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Local Community Support Roadmap</h4>
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
                                                                                <li class="data-item">Upgrade of SK Networks social contribution programs(2022)</li>
                                                                                <li class="data-item">Annual volunteer work hour target per employee : 20 hours</li>
                                                                                <li class="data-item">Plan and roll out of SK Networks probono service programs</li>
                                                                                <li class="data-item">Development of measures for impacts of social contribution activities</li>
                                                                                <li class="data-item">Conduction of regular surveys on SK People</li>
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
                                                                                <li class="data-item">Roll out of SK Networks social contribution system</li>
                                                                                <li class="data-item">Expansion of probono service coverage<br> - Linking social contribution performance with BM</li>
                                                                                <li class="data-item">Upgrade of the impact measurement from social contribution activities</li>
                                                                                <li class="data-item">Conduction of regular surveys on SK People and improvement of social contribution programs</li>
                                                                                <li class="data-item">SK Networks(head office) achieved a participation rate of 85% or more of its employees in social contribution programs</li>
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
                                                                                <li class="data-item">Upgrade of SK Networks social contribution system</li>
                                                                                <li class="data-item">Upgrade of the performance of probono activities<br> - Linking social contribution performance with BM to a greater degree</li>
                                                                                <li class="data-item">Forging partnership model with external stakeholders (public organizations, local communities, NGOs, etc.)</li>
                                                                                <li class="data-item">SK Networks(head office) achieved a participation rate of 85% or more of its employees in social contribution programs</li>
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
                                                        <h4 class="section-name">Activities and Performance for the Local Community</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">SK Networks strives to support local community development and various vulnerable groups through the “Happiness +” social contribution program. The company engages in multiple programs such as meal distribution at Myeongdong Babjib, Namsan Park and Yeouido Saetgang Park clean-up, sheltered workshop assistance, and non-contact kit-making to encourage members to participate in community support activities. Through these programs, all members totaled 2,433 hours of participation in 2024.
                                                        Furthermore, SK Networks has donated over KRW 100 million annually for the past four years by supporting briquette/kimchi-sharing, supplies for cubbyhole dwellers, and Gwangjin-gu Food Market. In particular, Walkerhill has been supporting the Gwangjin-gu Food Market program since 2021 and continues to contribute to the program’s expansion by providing 3,250 items free of charge to 714 people in 2024 through cash and goods donations worth approximately KRW 18.5 million.
                                                        SK Networks will remain committed to sustainable community development through various support activities by expanding linkages to business models.</p>
<%--                                                    <p class="comment design1">* HMR : Home Meal Replacement</p>--%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Supporting SE* Ecology</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <p class="para">SK Networks vows to leverage business to address social challenges and innovate business models with focus on social values, supporting the SE ecosystem in so doing. In particular, SK Networks has persistently endeavored to bolster up a social safety net, support for less-advantaged social classes having potential for future growth (youth education programs, mom-and-pop business support packages) and resolve challenges facing local communities in connection with SK business sites.</p>
                                                    <p class="para">As a part of its business, SK Networks seeks to forge partnerships and facilitate shared growth with social enterprises that share common aspirations with it, trying to help social enterprises rise on their own and create opportunities for joint business innovation by leveraging SK Networks people’s expertise. SK Networks also plans to gradually expand collaboration with external stakeholders to promote SE ecosystem.</p>
                                                    <p class="comment design1">* Social Enterprise</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section design1 case3 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">Goals for supporting SE ecosystem Roadmap</h4>
                                                        <!-- <p class="comment design1">*Social enterprise/social venture</p> -->
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
                                                                                <li class="data-item">Development of strategy to support SE ecosystem</li>
                                                                                <li class="data-item">Operation of SK Networks’ probono programs<br> - Target-type probono / Spot-type probono</li>
                                                                                <li class="data-item">Conduction of regular surveys on social enterprises with questions on SE ecosystem promotion activities</li>
                                                                                <li class="data-item">Participation in consultative bodies/alliances forged in the SK Group</li>
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
                                                                                <li class="data-item">Expansion of the scope of support for SE ecosystem and performance measurement</li>
                                                                                <li class="data-item">Fostering of participation in probono programs</li>
                                                                                <li class="data-item">Improvement of SE ecosystem support programs as feedback from participating SEs and SK Networks people</li>
                                                                                <li class="data-item">More active participation in consultative bodies/alliances forged in the SK Group</li>
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
                                                                                <li class="data-item">Upgrade of the SE ecosystem support strategy and performance</li>
                                                                                <li class="data-item">Boosting up of probono program performance</li>
                                                                                <li class="data-item">Expansion of collaboration with external stakeholder</li>
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
                                                        <h4 class="section-name">SK Networks probono</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="post-list design6 case1 type1 layout1">
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-inform">
                                                                    <p class="para">SK Networks operates Spot Pro Bono and Targeted Pro Bono programs to have members’ expertise contribute to society and support the growth of social enterprises and social ventures. Spot Pro Bono matches social enterprises needing consultations with members who have relevant competencies and provides advisory sessions in areas such as business planning, marketing, legal affairs, finance/accounting, translation/interpretation, R&D, and usability testing. Targeted Pro Bono is a program that brings together an advisory group of multiple pro bono specialists with expertise tailored to the needs of social enterprises to provide ongoing comprehensive consulting. Social enterprises that fit the business model and social contribution directivity are selected, and the advisory group members perform advisory activities for 6 months.</p>
                                                                    <p class="para">In 2024, 27 members (8 in Targeted Pro Bono, 10 in Spot Pro Bono, and 9 in usability testing) from SK Networks and its major subsidiaries participated in various Pro Bono Programs for a total of 226 hours. Notably, the 2024 Targeted Pro Bono program provided comprehensive consulting for 3 social enterprises/ventures focused on artificial intelligence, aligning with SK Networks’ future business direction. As a result, SK Networks pro bono specialists received the Outstanding Pro Bono Award in the Group Category (2 teams) and Super Rookie Award (1 individual) at the 2024 Pro Bono Awards organized by the social enterprise Happy Narae. These achievements demonstrate SK Networks’ contribution to the growth of various social enterprises and the SE ecosystem by leveraging its members’ competencies.</p>
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
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>

</body>

</html>
