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
    <title>Employee Happiness &lt; Society &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
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
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg member" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Society</span></li>
                            <li class="data-item"><span class="item-text">Employee Happiness</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Managing Business for<br class="pc-only">
                            a Sustainable Society</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Employee Happiness</h3>
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
                    <div class="content-head">Employee Happiness</div>
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
                                                    <button role="tab" class="tab-text" id="humanrights" onclick="tabClickEvent(event)">Protection of Human Rights</button>
                                                </li>
                                                <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                                    <button role="tab" class="tab-text" id="talent-development" onclick="tabClickEvent(event)">Talent Development and Management</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="panel-display design1 case1">
                                        <div class="panel-list">
                                            <!-- tab1 -->
                                            <div id="tab-panel1" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Protection of Human Rights</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK Networks defines the ultimate goal of all management activities to be ‘employee happiness’ and states clearly the need to pursue continuous happiness for both its stakeholders and employees. In particular, based on the principles required by international organizations related to human rights and labor, such as the United Nations, the "SK Networks Human Rights Policy" has been enacted. We reflect the policy below in all our policies and activities related to human rights and labor.
                                                                    </p>
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="btn-display design1 align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/사회/구성원 행복/첨부1_250331_인권선언문_영문(홈페이지용).jpg"><span class="btn-text">Human Rights Commitment Declaration Download</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case3 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">SK Networks Human Rights Policy</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <div class="data-display design3 case1 type1">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks respects the human rights of its employees.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company recognizes basic human rights inherent to all employees and strives to guarantee their human rights. If the company becomes aware of any disrespectful action, including but not limited to assault, violent language, sexual harassment, and workplace bullying, measures will be taken according to company regulations.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks does not discriminate.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company shall neither apply different working conditions such as recruitment, wage, and promotion nor take any other action against its employees based on gender, age, nationality, race, religion, marriage, pregnancy, childbirth, etc., without any reasonable ground.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks pays wages above the legal minimum in a timely manner.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company pays wages above the legal minimum according to labor relationship laws enforced in each country and provides wage slips accordingly. In addition, allowances are paid as required in case of any overtime labor including extended, nights and holidays.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks prohibits forced labor.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company does not allow forced labor of its employees by means of violence, blackmailing, confinement, or other measures that restrain both their physical and mental freedom in an unjust manner. Also, the company prohibits holding one’s original copy of identification recognized internationally so as to prevent any forced labor, and the freedom of retirement is guaranteed as well.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks complies with relevant regulations regarding working hours and paid leaves.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company complies with regulations regarding working hours, extended/nights/holidays, work breaks, and paid leaves stipulated in labor relations laws. Regular assessments are conducted to check the compliance status. In addition, measures are in place to grant off-time leaves if employees have worked overtime in excess of their working hours.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks does not hire underage workers.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company complies with the minimum employment age regulations specified by each country and operates a recruitment process to prevent hiring underage workers. In addition, we conduct regular inspections to check whether underage workers are hired or not. If such cases are identified, employees are taken off duties not only directly related to production but also involving moral or health-related hazards/risks, suspended from nighttime work, holiday work, and overtime work. Upon operating internship or apprentice programs, continuous verifications are performed to check if relevant laws and regulations in each country where the company operates are followed.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks guarantees freedom of association.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company guarantees rights of organization, collective bargaining, and collective action stipulated in labor relations laws and does not treat workers unfairly because of their labor union membership or activities. This is the freedom of association that guarantees both the freedom to participate or not in peaceful assemblies.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks operates on/off-line grievance settlement procedures.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company listens continuously to difficulties experienced by employees through ethical management reporting and in-house grievance counseling programs. If any grievance is found to be true, adequate measures are taken according to in-house policies, and a whistleblower protection policy is carried out, as necessary.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">SK Networks conducts annual inspections on its performance in terms of human rights protection.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">The company conducts self-inspections every year to check if policies are operated properly following the UNGC(UN Global Compact) guidelines. Immediate measures are taken place if any deficiency is identified.</p>
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
                                                                        <h4 class="section-name">Goals and roadmap for Human Rights Protection</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK Networks is building a human rights management system to protect the human rights of the employees.</p>
                                                                    <div class="data-display roadmap case1 type1">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2023</em>
                                                                                            <p class="para">Establishment of a human rights<br class="pc-only"> management system</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case2 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Human rights due diligence</li>
                                                                                                <li class="data-item">Human rights impact assessment/risk diagnosis</li>
                                                                                                <li class="data-item">Improvement of weaknesses drawn by the human rights risk diagnosis results</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2025</em>
                                                                                            <p class="para">Outward expansion of the<br class="pc-only"> human rights management</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Disclosure of Human rights management performance</li>
                                                                                                <li class="data-item">Reaching a consensus of human rights policy, management system working with SK group member companies, business partners, and global human rights initiatives.</li>
                                                                                                <li class="data-item">External Recognition of human rights management policy</li>
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
                                                                                            <p class="para">Advancement of the<br class="pc-only"> human rights management</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Extended application of the human rights management system to the global supply chain</li>
                                                                                                <li class="data-item">Support for establishing business partners’ human rights policies/due diligence system</li>
                                                                                                <li class="data-item">Enhancement/development of human rights policy to the level of global best practices</li>
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
                                                        <div class="section design4 case3 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="data-display design2 case4 type1">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">
                                                                                <div class="item-wrap">
                                                                                    <div class="item-head">
                                                                                        <p class="item-subject">Due Diligence on Human Rights</p>
                                                                                    </div>
                                                                                    <div class="item-util">
                                                                                        <div class="btn-display">
                                                                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="/upload/public/data/en/sustainability/사회/구성원 행복/SKN_Human Rights Inspection Checklist.pdf"><span class="btn-text">SKN Human Rights Inspection Checklist</span></a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body process">
                                                                    <div class="post-list design5 case1 type1">
                                                                        <div class="post-item">
                                                                            <div class="post-wrap">
                                                                                <div class="post-figure">
                                                                                    <img src="/assets/images/sustainability/member-process-en.svg" alt="Declaration and internalization of human rights policy, Human rights impact assessment, Establishment and implementation
                                                                                    of human rights polic, Monitoring and Disclosure, Operation of grievance mechanism" class="pc-only">
                                                                                    <img src="/assets/images/sustainability/member-process-mo-en.png" alt="Declaration and internalization of human rights policy, Human rights impact assessment, Establishment and implementation
                                                                                    of human rights polic, Monitoring and Disclosure, Operation of grievance mechanism" class="mo-only">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-display design1 case1 type2">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Survey on the employees' level of awareness of human rights</li>
                                                                                                <li class="data-item">Identifying the level of human rights management awareness/priority of employees/stakeholders</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Analysis on Human Rights Violation</li>
                                                                                                <li class="data-item">Case analysis on inside/outside the organization</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Human rights impact assessment design</li>
                                                                                                <li class="data-item">Index setting for human rights impact assessment based on analysis results</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Human rights impact assessment</li>
                                                                                                <li class="data-item">Self-evaluation of internal business personnel (surveys, etc.)</li>
                                                                                                <li class="data-item">On-site due diligence by external experts</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Identification of improvement points for Human rights management</li>
                                                                                                <li class="data-item">Publication of human rights impact assessment report</li>
                                                                                                <li class="data-item">Recommendations on human rights management</li>
                                                                                                <li class="data-item">Suggestion of direction for human rights management</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="section-aside">
                                                                    <div class="data-display design1 case1 type1">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <p class="para">To identify improvement opportunities relevant to human rights and develop applicable action plan, SK Networks conducted a human rights impact assessment in 2022. The assessment consisted of a survey on SKN people, checklist-based self-assessment and risk assessment by an independent 3rd party. As recommended by the assessment findings, a human rights declaration was selected as the primary initiative; a human rights declaration was promulgated in September, 2022 as reviewed and endorsed by the company-wide ESG Implementation Committee; and SKN people’s commitment was secured by obtaining digital signatures from all SKN people.</p>
                                                                                        <p class="para">Furthermore, a roadmap has been developed to better uphold human rights, with issues identified in the human rights impact assessment analyzed and worked on step by step. As a result, SKN people are engaged in human rights management, with a sense of ownership of corporate management activities boosted by lofty awareness of human rights cause.</p>
                                                                                        <p class="para">According to a human rights survey on SKN people in 2023, 81% of the SKN people surveyed rated SKN’s respect for human rights as excellent, with negative responses dropped to 3% when compared with the previous year (5%). In addition, almost all or 93% of the respondents answered that human rights were given consideration in business processes, with the share of SKN people positively rating SKN’s organizational respect for human rights in comparison with other employers at 82%, 3% up from the previous year. SK Networks will continue to conduct human rights impact assessment regularly to identify risks to human rights and work on human rights issues in a bid to enhance systematic respect for human rights.</p>
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
                                            <!-- tab2 -->
                                            <div id="tab-panel2" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Talent Development and Management</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK Networks has implemented various systems across multiple areas to promote work-life balance, innovate work practices, And building a competence development system, thereby fostering and managing talent. These initiatives have created a work environment where all employees can maintain stability in both their professional and personal lives and work with greater motivation. The Board of Directors deliberates on strategic agenda items related to talent recruitment and development. The Strategy∙ESG Committee reviews key policies and activities, including those related to employee human rights, while the Labor-Management Committee, representing the labor union, ensures employee’s freedom of association in accordance with labor laws and facilitates agreement with the company. In this process, the Head of Management Support Division is systematically responsible for talent management and development, annually reporting talent development strategies and key issues to the management team, including the CEO, thereby strengthening the role of management executives. This ensures that the management team clearly understands their responsibility for talent development and take appropriate measures accordingly.
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case3 type1 balance-roadmap">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Work-life Balance Roadmap</h4>
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
                                                                                            <p class="para">Increasing and advancing support<br class="pc-only"> for work-life balance</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case2 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Conducing and improving surveys on people’s work-life balance</li>
                                                                                                <li class="data-item">Improving self-design CoP considering the joint growth of individuals and the company</li>
                                                                                                <li class="data-item">Introducing a health management program</li>
                                                                                                <li class="data-item">Upgrading the work environment by adopting flexible work patterns/hours/locations</li>
                                                                                                <li class="data-item">Family-Friendly Company Certification</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2025</em>
                                                                                            <p class="para">Empowering people to have ownership<br class="pc-only"> for work-life balance</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Fostering a culture of innovation by enabling people to design the way they do their jobs</li>
                                                                                                <li class="data-item">Building a platform to facilitate people’s communication/feedback</li>
                                                                                                <li class="data-item">Improving people’s refresh plans</li>
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
                                                                                            <p class="para">Company vowing to lead<br class="pc-only"> work-life balance</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Upgrading the platform to facilitate people’s communication/feedback</li>
                                                                                                <li class="data-item">Organizing a consultative body at C-Level to ensure work-life balance</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="btn-display design1 align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/사회/구성원 행복/첨부2_SKN_Benefit Programs to Enhance Employee Happiness and Well-being.pdf"><span class="btn-text">Download the employee benefit plan</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Work-Family Compatibility</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">Various systems are available at SK Networks for work-family compatibility.</p>
                                                                    <div class="board-list design3 case2 type1">
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">Pregnancy &amp; Childbirth</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">reduced work hours and regular health checkups during pregnancy, and maternity leave</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">Child-rearing</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">parental leave, reduced work hours during the child-rearing period</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">Others</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">family care leave, infertility treatment leave, infertility leave of absence, menstruation leave</p>
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
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">New Ways of Working</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK Networks provides institutional support for employees to choose their work hours and spaces.</p>
                                                                    <div class="board-list design3 case2 type1">
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">Changes in work hours</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">selective working hours (flextime)</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">Changes in workspaces</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">Telework (i.e., work-from-home)</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="t-display design1 case1 type1 align3">
                                                                        <p class="comment design3">* Number of employees participating in the flexible working hours system</p>
                                                                        <table>
                                                                            <caption>This table provides information on the number of employees participating in the flexible work system and consists of 2021, 2022, and 2023.</caption>
                                                                            <colgroup>
                                                                                <col>
                                                                                <col>
                                                                                <col>
                                                                            </colgroup>
                                                                            <thead>
                                                                                <tr>
                                                                                    <th scope="col">2021</th>
                                                                                    <th scope="col">2022</th>
                                                                                    <th scope="col">2023</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>3,084<br class="mo-only">(72.6%)</td>
                                                                                    <td>2,663<br class="mo-only">(61.8%)</td>
                                                                                    <td>2,711<br class="mo-only">(67%)</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <p class="comment design1">*Unit: Person(%)</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design2 type1 family-friendly">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">External Certification: Family-Friendly Business</h4>
                                                                        <p class="section-summary">SK Networks is striving to create a corporate culture in which women can continue to work, ranging from HR operations like recruitment, evaluation, and promotion to work-family compatibility programs such as child-rearing leave of absence and workplace daycare center. In 2019, the company was certified as a Family-Friendly business awarded by the Ministry of Gender Equality and Family to companies that operate an exemplary family-friendly system in terms of childbirth and child-rearing supports, flexible work systems, family-friendly corporate culture building, etc.</p>
                                                                    </div>
                                                                </div>
                                                                <div class="section-figure">
                                                                    <img src="/assets/images/sustainability/esg-family-friendly-logo.png" alt="가족친화 우수기업 로고">
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
