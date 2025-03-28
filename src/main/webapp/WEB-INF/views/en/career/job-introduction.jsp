<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Recruitment information &lt; Career &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main career recruit" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">Career</span></li>
                        <li class="data-item"><span class="item-text">Recruitment information</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Recruitment information</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Recruitment information</div>
                    <div class="content-body">
                        <div class="section design1 type1 rec-info">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="tab-display design1 case1 type1">
                                        <div class="swiper tab-wrap">
                                            <ul class="swiper-wrapper tab-list" role="tablist">
                                                <li id="tab1" class="swiper-slide tab-item recruit-tab-item" aria-controls="tab-panel1">
                                                    <button role="tab" class="tab-text" id="job-description" onclick="tabClickEvent(event)">Jobs at SK Networks</button>
                                                </li>
                                                <li id="tab2" class="swiper-slide tab-item recruit-tab-item" aria-controls="tab-panel2">
                                                    <button role="tab" class="tab-text" id="recruitment-information" onclick="tabClickEvent(event)">Recruitment Process</button>
                                                </li>
                                                <li id="tab3" class="swiper-slide recruit-tab-item">
                                                    <a href="https://www.skcareers.com" class="tab-text" target="_blank" title="Opens in a new window.">Job Openings</a>
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
                                                                            <p class="item-subject">Jobs at SK Networks</p>
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
                                                                        <p class="board-subject">ICT Marketing</p>
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Mobile phone terminal wholesale (including ICT devices), management and support for manufacturers and distributors</li>
                                                                                <li class="data-item">Direct online channel planning &amp; operation</li>
                                                                                <li class="data-item">Logistics operation process planning/design, cost analysis</li>
                                                                                <li class="data-item">Used ICT device distribution, New recycle service planning</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="board-util">
                                                                        <div class="btn-display align1">
                                                                            <div class="btn-area">
                                                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/${LANG}/business/information-communication" target="_blank" title="Opens in a new window."><span class="btn-text">Go to ICT Marketing</span></a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-head">
                                                                        <p class="board-subject">Business Administration</p>
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Company-wide management strategy planning, investment review, benefit/loss management</li>
                                                                                <li class="data-item">Finance, accounting, taxation</li>
                                                                                <li class="data-item">HR, purchase, PR, legal affairs, SHE</li>
                                                                                <li class="data-item">Corporate Culture, SV(Social Value)</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-head">
                                                                        <p class="board-subject">Walkerhill Hotels & Resorts</p>
                                                                        <div class="bullet-display design1 case1 type1">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Marketing, promotion planning</li>
                                                                                <li class="data-item">Hotel business upgrade and BM innovation planning &amp; operation</li>
                                                                                <li class="data-item">New business development including outside projects</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="board-util">
                                                                        <div class="btn-display align1">
                                                                            <div class="btn-area">
                                                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/${LANG}/business/hotel-and-resort"><span class="btn-text">Go to Walkerhill Hotels &amp; Resorts</span></a>
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
                                                                            <p class="item-subject">Phased candidate screening process</p>
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
                                                                        <strong class="board-name">Job application</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/doc.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">Document screening</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/write.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">Written test screening</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/inter.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">Interview screening</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/audit.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">Health checkup</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="board-item">
                                                                <div class="board-wrap">
                                                                    <div class="board-figure">
                                                                        <img src="/assets/images/career/accept.svg" alt="">
                                                                    </div>
                                                                    <div class="board-info">
                                                                        <strong class="board-name">Final acceptance</strong>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">Job application</p>
                                                                            <p class="para">
                                                                                Online job applications are received through SK Talent Portal (<a href="https://www.skcareers.com/" target="_blank" title="Opens in a new window."><u>www.skcareers.com</u></a>)
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
                                                                            <p class="item-subject">Document screening</p>
                                                                            <p class="para">
                                                                                Submitted documents shall be reviewed to check the applicant’s academic background, career history, job relevancy and whether there is any reason for disqualification. In particular, application letters drafted by the applicants themselves are subject to joint review by the HR department and relevant department to have a closer look into their values and see to what extent the values correspond to those sought by SK.
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
                                                                            <p class="item-subject">Written examination screening</p>
                                                                            <p class="para">
                                                                                SKCT measures competences required to perform tasks in SK in diverse and comprehensive perspectives. SKCT comprises the following criteria: critical thinking measures complex and high-level thinking abilities required to perform tasks; situational judgment measures whether an adequate judgment can be made in problematic situations that can be faced during work; and, work personality measures whether an applicant’s personality, values and attitudes are suitable to perform tasks.
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
                                                                            <p class="item-subject">Interview screening</p>
                                                                            <p class="para">
                                                                                Various interview tools in forms of individual/group interviews are used to assess an applicant’s expertise, level of job understanding, ability to perform tasks, potential capacities, viewpoints on enterprises, Pae-gy: the spirit of ambition, etc.
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
                                                                            <p class="item-subject">Health checkup</p>
                                                                            <p class="para">
                                                                                Health checkup is arranged for applicants who passed the interview screening.
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
                                                                            <p class="item-subject">Recruitment methods</p>
                                                                            <p class="para">
                                                                                New hire recruitment is categorized into on-demand recruitment and internship programs linked with job opportunities. Career employee recruitment is arranged on demand when a position becomes available.
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
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>
