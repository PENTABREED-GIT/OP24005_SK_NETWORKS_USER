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
    <title>Ethics &lt; Governance &lt; Sustainability &lt; SK Networks</title>
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg ethical-man" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Governance</span></li>
                            <li class="data-item"><span class="item-text">Ethics</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Creating Future Value through<br>
                            Transparent Management</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Ethics</h3>
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
                    <div class="content-head">Ethics</div>
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
                                                    <button class="tab-text" id="ethical-management-system" onclick="tabClickEvent(event)">Ethical Management System and Activities</button>
                                                </li>
                                                <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                                    <button class="tab-text" id="compliance" onclick="tabClickEvent(event)">Compliance</button>
                                                </li>
                                                <li id="tab3" class="swiper-slide tab-item" aria-controls="tab-panel3">
                                                    <button class="tab-text" id="anti-corruption-policy" onclick="tabClickEvent(event)">Anti-Corruption Policy</button>
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
                                                                        SK Networks takes not only its economic and legal responsibilities seriously, but also ethical responsibility is vital in its management processes. By establishing a fair and transparent corporate culture, we aim to earn the trust of our stakeholders and contribute to the happiness of society as a whole through the continuous growth and development of the company. In this regard, SK Networks established and released the Code of Ethics in 2007, based on SKMS, SK's management philosophy. The Code provides employees with directions on proper behaviors and judgement and requests suppliers to understand and comply with the Code of Ethics.
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Ethical Management System</h4>
                                                                        <div class="section-summary">To fulfill its ethical responsibilities and to enhance stakeholders' trust, SK Networks is striving to foster a fair, transparent corporate culture by establishing an ethical management system consisting of 3Cs (Code, Compliance, and Consensus). Our Internal Audit Division, an organization in charge of ethical management, operates the ethical management system and runs various systems and programs to establish and spread the ethics culture.</div>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body process">
                                                                    <div class="post-list design5 case1 type1">
                                                                        <div class="post-item">
                                                                            <div class="post-wrap">
                                                                                <div class="post-figure">
                                                                                    <img src="/assets/images/sustainability/ethic-en.svg" alt="01 Code, 02 Compliance, 03 Consensus">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-display design3 case4 type4">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <p class="data-subject"><em class="num-tit">Code of Ethics<br>
                                                                                            Code of Ethics Practice Guideline<br>
                                                                                            FAQs on the Code of Ethics<br>
                                                                                            Practice Guidelines</em></p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <p class="data-subject">
                                                                                            <em class="num-tit">
                                                                                                Exclusive organization for ethical management (Internal Audit Division)<br>
                                                                                                Self-monitoring &amp; correction system<br> 
                                                                                                Reporting channel and Whistleblower protection
                                                                                            </em>
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <p class="data-subject"><em class="num-tit">Ethics training<br>
                                                                                            Ethics practice workshop<br>
                                                                                            Ethics practice surveys<br>
                                                                                            Ethics Management Practice Pledge</em></p>
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
                                                                        <h4 class="section-name">Ethical Management Targets and Roadmap</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK Networks vows to establish an ethical management system living up to global expectations and empowering the ethical management systems of its subsidiaries and suppliers as well. To that end, SK Networks defines and tries to accomplish the following targets regarding ethical management policy and training.</p>
                                                                    <div class="data-display roadmap case1 type1">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2024 ~ 2025</em>
                                                                                            <p class="para">Upgrade the ethical<br>management system to<br>global standards</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="data-content">
                                                                                            <p class="para">Policy</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Disseminate and support ISO 37001 certification across subsidiaries</li>
                                                                                                    <li class="data-item">Establish ethical management control standards for subsidiaries</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-content">
                                                                                            <p class="para">Training</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Develop/Implement ethical education and anti-corruption training content reflecting organizational characteristics
                                                                                                    </li>
                                                                                                    <li class="data-item">Expand ethical education content for suppliers</li>
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
                                                                                            <p class="para">Spread the ethical<br>management system to<br>global standards
                                                                                            </p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">Policy</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Stabilize/Disseminate ISO 37001 certification across subsidiaries</li>
                                                                                                    <li class="data-item">Increase the coverage of ethical management control targets across subsidiaries</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">Training</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Continue developing ethical education content to reflect changes in the business environment
                                                                                                    </li>
                                                                                                    <li class="data-item">Implement pilot training programs tailored to each target (leader/member)
                                                                                                    </li>
                                                                                                    <li class="data-item">Provide support for developing ethical education content to reflect the characteristics of subsidiaries</li>
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
                                                                                            <p class="para">Ensure the ethical<br>management system at<br>the global top-level</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">Policy</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Maintain ISO 37001 certification for the head office and subsidiaries and evaluate expanding the certification scope
                                                                                                    </li>
                                                                                                    <li class="data-item">Improve the quality of ethical management control for subsidiaries</li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="data-content">
                                                                                            <p class="para mo-only">Training</p>
                                                                                            <div class="bullet-display design1 case1 type5 spec">
                                                                                                <ul class="data-list">
                                                                                                    <li class="data-item">Update education content for ethical education and anti-corruption training</li>
                                                                                                    <li class="data-item">Establish an education system tailored to each target</li>
                                                                                                    <li class="data-item">Continue supplementing/improving ethical education content for suppliers</li>
                                                                                                    <li class="data-item">Provide support for improving ethical education content to reflect the characteristics of subsidiaries</li>
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
                                                                        <h4 class="section-name">Code</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK Networks established its Code of Ethics in 2007, grounded in SKMS (SK Management System), the group’s core management philosophy. The company conducts annual reviews to assess its effectiveness and regularly updates the Code to ensure its continued relevance. The Code of Ethics sets forth the standards of conduct and ethical principles that all employees are expected to uphold, including customer service, personal integrity, responsibilities to shareholders, partnerships with business associates, and the company’s role in society.<br>
                                                                        In addition, SK Networks operates a Code of Ethics Implementation Guideline to help employees fully understand and apply the Company’s ethical standards. This guideline defines appropriate behaviors in key areas such as anti-corruption, mutual respect, protection of company and customer information, conflict of interest management, fair trade, and responsibilities related to safety, the environment, and health. It also includes procedures for reporting misconduct and safeguarding whistleblowers. In 2024, the guideline was revised to further enhance whistleblower protection. The Code of Ethics and its Implementation Guideline are shared not only with all SKN employees but also with partner companies. To ensure full understanding and compliance, SK Networks provides ethics-related support such as training programs and requires all parties to sign a pledge of adherence.<br>
                                                                        <br>
                                                                        Furthermore, in 2025, SK Networks established its Anti-Bribery and Anti-Corruption Compliance Policy, incorporating both domestic and international regulations, including Korea’s Improper Solicitation and Graft Act, the U.S. Foreign Corrupt Practices Act (FCPA), and the UK Bribery Act, as well as anti-corruption conventions of the OECD and the United Nations. This policy is designed to ensure that employees embed these standards into their day-to-day operations.<br>
                                                                        <br>
                                                                        To further strengthen its ethical management system, SK Networks obtained ISO 37001 Anti-Bribery Management System certification in December 2022 and remains committed to continuously advancing its ethical management practices.
                                                                    </p>
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="btn-display">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/거버넌스/윤리규범/SK_networks_Code_of_Ethics.pdf"><span class="btn-text">Download &lt;Code of Ethics&gt;</span></a>
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/거버넌스/윤리규범/(영문) 2. SKN 윤리규범실천가이드.pdf"><span class="btn-text">Download &lt;Guidelines for the Code of Ethics&gt;</span></a>
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/en/sustainability/governance/ethical/(SKN)Anti-bribery and Anti-corruption Compliance Regulations.pdf"><span class="btn-text">Download &lt;Anti-bribery and Anti-corruption Compliance Regulations&gt;</span></a>
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/거버넌스/윤리규범/Business Partner Ethical Practices Agreement.pdf"><span class="btn-text">Download &lt;Business Partner Ethical Practices Agreement&gt;</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1 ethical-system">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Compliance</h4>
                                                                    </div>
                                                                    <p class="para">To ensure a systematic approach to ethical management, SK Networks has designated the Audit Office, which reports directly to the Board’s Audit Committee, as the dedicated organization for ethical practices. The Audit Committee, as the highest decision-making body for ethical management, oversees accounting and executive operations, and reviews and approves plans and outcomes related to both risk management and ethical practices.</p>
                                                                    <p class="para">The Audit Office, under the direct oversight of the Audit Committee, is responsible for developing and overseeing the implementation of ethical management plans, and submitting them to the Audit Committee for review and approval. It also implements various systems and programs to foster a culture of ethics within the organization, continuously monitors the state of ethical practices, and carries out necessary improvements.</p>
                                                                    <p class="para">"In addition to conducting internal audits, the Audit Office supports overall ethical practices by investigating unethical behavior and coordinating with the internal audit teams of subsidiaries through a consultative body. Key audit plans, internal audit results, and corporate ethics-related measures are reported to and approved by the Audit Committee on a quarterly basis, with additional reports submitted as needed to ensure transparency in operations.</p>
                                                                    <div class="btn-display">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/en/sustainability/governance/ethical/results_of_audits_by_audit_committee.pdf"><span class="btn-text">Download Details of Audit Committee Review</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <div class="post-list design5 case2 type2">
                                                                        <div class="post-item">
                                                                            <div class="post-wrap">
                                                                                <div class="post-head">
                                                                                    <em class="post-subject">Organization of the Ethical Management Council</em>
                                                                                </div>
                                                                                <div class="post-figure">
                                                                                    <img src="/assets/images/sustainability/compliance-en.svg" alt="This is an image of the organization of the ethical management council. Please refer to the bottom for more information." class="pc-only">
                                                                                    <img src="/assets/images/sustainability/compliance-en-mo.png" alt="This is an image of the organization of the ethical management council. Please refer to the bottom for more information." style="min-width: 600px;" class="mo-only">
                                                                                    <div class="post-body blind">
                                                                                        <strong>SK Networks Audit Committee</strong>
                                                                                        <ul>
                                                                                            <li>Chief of Ethical Management Council: SK Networks Audit Division Head</li>
                                                                                            <li>Ethical Management Council
                                                                                                <ul>
                                                                                                    <li>SK Networks (Secretary) : Ethics Audit Team Leader The person in charge of Ethical Management</li>
                                                                                                    <li>Walkerhill : The person in charge of Ethical Management</li>
                                                                                                    <li>SK Networks service : People Growth Team Leader, The person in charge of Ethical Management</li>
                                                                                                    <li>SK Speedmate: Corporate Planning & Finance Team Leader, The person in charge of Ethical Management</li>
                                                                                                    <li>SK Magic: Ethical Management Team Leader, The person in charge of Ethical Management</li>
                                                                                                    <li>MINTIT: Business Supporting Team Leader, The person in charge of Ethical Management</li>
                                                                                                    <li>En-core: Head of Management Supporting Division, The person in charge of Ethical Management</li>
                                                                                                    <li>Glowide: Management Supporting Team Leader, The person in charge of Ethical Management</li>
                                                                                                </ul>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <%--<p class="comment design1">※ SK Networks provides ethical management services as shared services, and the subsidiaries participates in the ethical management council when needed.</p>--%>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-display design1 case1 type8">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <em class="data-subject">Operating the Ethical Management Council</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">SK Networks has been operating an Ethical Management Council since 2018 to establish a systematic framework and elevate the standard of ethical management practices between the head office and its subsidiaries. The council, primarily composed of working-level personnel from each company, holds quarterly meetings where they collaboratively plan and implement ethics training and workshops. Additionally, the council supports various activities such as establishing ethics regulations for each company, conducting audits, investigating reports, and enhancing the competencies of those responsible for corporate ethics. Through the activities of the Ethical Management Council, SK Networks aims to continuously strengthen the independent ethical management functions of its subsidiaries.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <em class="data-subject">Operation of the Self-Compliance System</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">
                                                                                            To strengthen its autonomous commitment to ethical management, SK Networks operates a self-compliance system that ensures adherence to legal and ethical standards while preventing and controlling misconduct and corruption. As part of this initiative, an annual checklist is developed to assess and monitor ethical risks across business area at the headquarters and its subsidiaries.<br>
                                                                                            The checklist covers key functions such as HR management, expense control, procurement and business partner management, sales and receivables management, investment oversight, and inventory management. It is designed to identify and mitigate ethics and anti-corruption risks tailored  to the specific characteristics of each business function. The checklist is continuously improved each year with the addition of new assessment items. In particular, high-risk areas are subject to direct inspections conducted by the Audit Office and the internal audit departments of subsidiaries. Through this process, SK Networks verifies the adequacy of the self-assessment results and supporting documentation submitted by each unit, thereby reinforcing the company’s ethical management system.
                                                                                        </p>
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
                                                                        <h4 class="section-name">Ethical Management Reporting Channels</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK Networks operates a range of online and offline ethics reporting channels—including its website, in-person consultations, and postal mail to enable all stakeholders to freely report unethical conduct. Reports received are thoroughly investigated by the Audit Team and the ethics management units of each subsidiary and are handled fairly and transparently in accordance with established procedures. Customer complaints related to service are referred to the relevant business units for prompt and appropriate resolution.<br>
                                                                        We place the utmost importance on safeguarding whistleblowers’ identities and safety by enforcing clear protection policies and rigorously managing all reporting procedures to prevent any retaliation against legitimate disclosures. Furthermore, employees who cooperate with whistleblowing-related investigations are afforded the same level of protection as whistleblowers themselves, thereby fostering a secure environment for ethical management practices.
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
                                                                                        <em class="data-subject">Web</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para"><a href="http://ethics.sk.co.kr" target="_blank" title="Opens in a new window.">http://ethics.sk.co.kr</a></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <em class="data-subject">Address</em>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">SK Networks Internal Audit Team, 85, Cheonggyecheon-ro, Jongno-gu, Seoul, 03190, Republic of Korea</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="btn-display align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://ethics.sk.co.kr/Main/Index" target="_blank" title="Opens in a new window."><span class="btn-text">Go to website</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Consensus</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <ul class="board-list design15 case1 type1">
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-info">
                                                                                    <strong class="board-name">Ethics Education Policy</strong>
                                                                                    <p class="para">SK Networks provides ethics education annually to its people including contractors and part- timers, aiming to ensure that all of them attend and finish the ethics education programs. A separate ethics education program has been available for management leaders and board members since September 2021, with another ethics education program intended for business partners rolled out from 2022 to boost awareness of ethical management practices. The ethics education programs cover major ethical management issues in SK Networks, including anti-corruption, office bullying, and work ethics. We also survey the ethics education program takers on the effectiveness, difficulty and logistics of the education programs to inform our efforts to improve the programs and contents of feedback from SKN people. SK Networks also plan to upgrade the ethics education programs for management leaders, board members and business partners annually in quantitative/qualitative terms in line with the rapidly changing business landscape both at home and abroad.</p>
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
                                                                                            <strong class="data-subject">Ethics Training History</strong>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                <table style="min-width: 891px;" class="col-w-1">
                                                                                                    <caption>The table provides results of ethics training and consists of categories (SK Networks and its subsidiaries and partners), 2019, 2020, 2021, 2022, and 2023.</caption>
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
                                                                                                            <th scope="col" colspan="2">Category</th>
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
                                                                                                            <td rowspan="2">SK Networks, subsidiaries, and second-tier subsidiaries*</td>
                                                                                                            <td>No. of employees completed training<br> (Unit : person)**</td>
                                                                                                            <td>4,635</td>
                                                                                                            <td>4,922</td>
                                                                                                            <td>4,866</td>
                                                                                                            <td>4,913</td>
                                                                                                            <td>4,862</td>
                                                                                                            <td>3,361</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>Percentage of employees completed training<br> (Unit : %)</td>
                                                                                                            <td>98.4</td>
                                                                                                            <td>97.8</td>
                                                                                                            <td>98.5</td>
                                                                                                            <td>99.2</td>
                                                                                                            <td>99.4</td>
                                                                                                            <td>99.5</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td rowspan="2">Partner companies***</td>
                                                                                                            <td>Implementation<br> (Unit : Y/N)</td>
                                                                                                            <td>N</td>
                                                                                                            <td>N</td>
                                                                                                            <td>N</td>
                                                                                                            <td>Y</td>
                                                                                                            <td>Y</td>
                                                                                                            <td>Y</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>No. of partner companies completed training<br> (Unit : number)</td>
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
                                                                                            <p class="comment design1">
                                                                                                * From 2019 to 2021, the Ethics Practice Survey had been implemented in six companies (SK Networks (incl. Walkerhill), SK Networks service, SK Magic, SK Magic service, SK Rent-a-car, SK Rent-a-car service). From 2022 to 2023, Ethics Practice Survey was expanded to eight companies (the existing six companies + MINTIT and Cartini) From 2024, the Ethics Practice Survey has been implemented in five companies (SK Networks (incl. Walkerhill), SK Networks Service, SK Magic, MINTIT, SK Electlink).<br>
                                                                                                ** Independent directors and non-regular employees were included from 2022.<br>
                                                                                                *** Business partners in direct transactions with SK Networks headquarters have been subject to a pilot ethics training program since 2022.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-info">
                                                                                    <strong class="board-name">Ethics Practice Survey</strong>
                                                                                    <p class="para">SK Networks conducts an Ethics Practice Survey for employees at the headquarters and its subsidiaries to assess compliance with the Code of Ethics and the level of ethical practice culture. Ethical management for employees is supported by handling critical implications from survey results, including mutual ethics among employees, inspection of Social Value-degrading elements, and continuous improvement of the ethical management practice system.</p>
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
                                                                                            <strong class="data-subject">Ethics Practice Survey History</strong>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                <table style="min-width: 891px;" class="col-w-1">
                                                                                                    <caption>The table provides the results of the Ethics Practice Survey and consists of categories (SK Networks and its subsidiaries/subsidiaries), 2019, 2020, 2021, 2022, and 2023.</caption>
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
                                                                                                            <th scope="col" colspan="2">Category</th>
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
                                                                                                            <td rowspan="2">SK Networks, subsidiaries, and second-tier subsidiaries*</td>
                                                                                                            <td>No. of participating employees<br> (Unit : person)</td>
                                                                                                            <td>3,705</td>
                                                                                                            <td>3,537</td>
                                                                                                            <td>4,125</td>
                                                                                                            <td>3,985</td>
                                                                                                            <td>3,963</td>
                                                                                                            <td>2,883</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>Percentage of participating employees<br> (Unit : %)</td>
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
                                                                                            <p class="comment design1">
                                                                                                * From 2019 to 2021, the Ethics Practice Survey had been implemented in six companies (SK Networks (incl. Walkerhill), SK Networks service, SK Magic, SK Magic service, SK Rent-a-car, SK Rent-a-car service). From 2022 to 2023, Ethics Practice Survey was expanded to eight companies (the existing six companies + MINTIT and Cartini) From 2024, the Ethics Practice Survey has been implemented in five companies (SK Networks (incl. Walkerhill), SK Networks Service, SK Magic, MINTIT, SK Electlink).
                                                                                            </p>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-info">
                                                                                    <strong class="board-name">Ethics Management Practice Pledge</strong>
                                                                                    <p class="para">On the first business day of each year, all employees are encouraged to participate in the Ethics Practice Pledge. Along with the employees’ voluntary actions, we aim to enhance awareness of ethical management and establish a transparent corporate culture.</p>
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
                                                                                    <strong class="board-name">Ethics Practice Workshop</strong>
                                                                                    <p class="para">Each year, SK Networks holds an Ethics Practice Workshop for all employees to elevate the level of their ethical management. During the Ethics Practice Workshop, participants watch videos or have discussions after reviewing pre-distributed materials related to ethical issues such as workplace bullying and conflict of interest at work, followed by sharing areas of improvement for practicing ethical management. In addition, organizations are selected and awarded the Ethics Management Workshop Excellence to internalize the ethical practice culture in each company, including subsidiaries.</p>
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
                                                                                            <strong class="data-subject">Ethics Practice Workshop History</strong>
                                                                                        </div>
                                                                                        <div class="data-body">
                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                <table style="min-width: 913px;" class="col-w-1">
                                                                                                    <caption>The table provides the implementation results of the ethical management practice workshop and consists of categories (SK Networks and its subsidiaries/subsidiaries), 2019, 2020, 2021, 2022, and 2023.</caption>
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
                                                                                                            <th scope="col" colspan="2">Category</th>
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
                                                                                                            <td rowspan="2">SK Networks, subsidiaries, and second-tier subsidiaries*</td>
                                                                                                            <td>No. of participating organizations<br> (Unit : number)</td>
                                                                                                            <td>414</td>
                                                                                                            <td>393</td>
                                                                                                            <td>549</td>
                                                                                                            <td>419</td>
                                                                                                            <td>393</td>
                                                                                                            <td>414</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>Percentage of participating organizations<br> (Unit : %)</td>
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
                                                                                            <p class="comment design1">
                                                                                                * From 2019 to 2021, the Ethics Practice Survey had been implemented in six companies (SK Networks (incl. Walkerhill), SK Networks service, SK Magic, SK Magic service, SK Rent-a-car, SK Rent-a-car service).<br>
                                                                                                * From 2022 to 2023, Ethics Practice Survey was expanded to eight companies (the existing six companies + MINTIT and Cartini)<br>
                                                                                                * From 2024, the Ethics Practice Survey has been implemented in five companies (SK Networks (incl. Walkerhill), SK Networks Service, SK Magic, MINTIT, SK Electlink).
                                                                                            </p>
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
                                                                        <h4 class="section-name">Internal Audits (Ethics/Anti-Corruption Audits)</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK Networks’ internal audits are conducted by the Audit Office, a body that reports directly to the Audit Committee under the Board of Directors. These audits include regular audits, implementation checks, self-assessments, and investigations into ethics-related reports. SK Networks carries out periodic internal audits across all business sites, both domestic and international, as well as subsidiaries, and support organizations. To proactively eliminate unethical risks and strengthen fraud detection, the Company is gradually reinforcing its internal audit activities focused on management potential risks.</p>
                                                                    <div class="para">
                                                                        <div class="bullet-display design1 case1 type6">
                                                                            <ul class="data-list">
                                                                                <li class="data-item">Regular audits begin with an annual risk assessment covering all domestic and international business sites and support units, including subsidiaries. Based on this assessment, an annual audit plan is developed for high-risk businesses and units, and executed upon approval by the Audit Committee. Audit results and follow-up on recommendations are continuously tracked through an internal system and regularly reported to the Audit Committee to enhance execution. SK Networks aims to audit all business sites and support units, including subsidiaries, at least once every three years.</li>
                                                                                <li class="data-item">SK Networks conducts an annual “Self-Check System Review” in which all business sites, support units, and subsidiaries independently assess ethical and anti-corruption risks across key areas such as HR, expenses, procurement, and business partners. The Audit Office of SK Networks and the internal audit teams of its subsidiaries directly inspect high-risk items and verify the appropriateness and sufficiency of the assessment results and supporting evidence. This process enables the Company to continuously diagnose and improve internal controls across core functions.</li>
                                                                                <li class="data-item">SK Networks and all its subsidiaries operate a variety of online and offline ethics reporting channels, including websites, in-person consultations, and mail. All reports are handled transparently and fairly in accordance with established procedures. Customer service-related complaints are forwarded to the relevant business departments for resolution, while all reports—including those involving ethical issues—are directly investigated by the Audit Office and the internal audit teams of the subsidiaries.</li>
                                                                            </ul>
                                                                        </div>
                                                                        <p class="comment design1">* Reports received by subsidiaries are investigated in coordination with the relevant subsidiary.</p>
                                                                    </div>
                                                                    <p class="para">If violations are identified based on internal audit findings, immediate corrective actions are taken, and issues requiring improvement are reflected in management activities. When necessary, comprehensive countermeasures are developed in collaboration with relevant departments.</p>
                                                                    <p class="para">Over the past three years, SK Networks has conducted at least one internal audit at its headquarters, all domestic and international business sites, and subsidiaries. These audits revealed key risks such as information security (e.g., document protection), improper work practices and procedural violations, and personal use of company assets. Corrective actions have been implemented, and these matters have been reported to the Audit Committee on a quarterly basis. In addition, the Company is working to prevent recurrence through  company-wide announcements, ethics training, and ethics practice workshops.</p>
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="btn-display">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/en/sustainability/governance/ethical/ethics_risk_revised_details.pdf"><span class="btn-text">Download Ethics Risk Assessment Report</span></a>
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
                                                                        <h4 class="section-name">Fair Trade Compliance Program</h4>
                                                                        <p class="section-summary">SK Networks’ Fair Trade Compliance Program (CP) is an internal compliance system established and operated with the goal of fair trade-related compliance. SK Networks introduced the CP in 2002 and has been presenting CP operation as an agenda for the BOD every year. Through the CP operation, we propose clear and concrete fair trade-related codes to our employees and minimize the risk of legal violations that can occur during business through preventive activities.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case4 type1 compliance">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">Operating Compliance Council</h4>
                                                                        <p class="section-summary">SK Networks operates the SK Networks Compliance Council, which includes the head office (including Walkerhill) and eight subsidiaries and sub-subsidiaries. This council ensures that all participating companies are committed to fulfilling their social responsibilities in compliance management and fair trade, continuously striving to elevate their compliance levels. The council is structured around three areas: Legal Affairs, Fair Trade, and SHE (Safety, Health, Environment). Through its activities, the council facilitates the sharing of necessary regulatory information, educational resources, and lessons learned among the member companies. These interactions strengthen proactive prevention and enhance the ability to respond to issues effectively.</p>
                                                                    </div>
                                                                    <p class="comment design1">* SK Networks Service, SK Magic, SK Magic Service, MINTIT, SK Electlink, En-core, SK Speedmate, Glowide</p>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="board-name">SK Networks Compliance Council</p>
                                                                    <ul class="board-list design17 case1 type1">
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/company.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">Participants</em>
                                                                                    <p class="para">SK Networks(including Walkerhill) and eight first and second-tier subsidiaries</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/modal.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">Modules</em>
                                                                                    <p class="para">Legal / CR / SHE</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/team.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">Members</em>
                                                                                    <p class="para">52<br> (as of 2025)</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="board-figure">
                                                                                    <img src="/assets/images/sustainability/act.png" alt="">
                                                                                </div>
                                                                                <div class="board-name">
                                                                                    <em class="board-caption">Key Activities</em>
                                                                                    <p class="para">Improvement of compliance
                                                                                        sensitivity and response
                                                                                        capacity, education and
                                                                                        information sharing</p>
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
                                                                        <h4 class="section-name">Fair Trade Compliance Committee</h4>
                                                                        <p class="section-summary">SK Networks appoints a compliance officer from the BOD and operates an organization dedicated to compliance management. Through the voluntary compliance committee, we are preparing a foundation for compliance by deriving key ethical issues and consequently inspecting the status of fair trade-related compliance for each business, promoting fair economy, enhancing trade transparency, and sharing the key Fair Trade policies with the relevant divisions.</p>
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
                                                    <div class="panel-body">
                                                        <div class="section design1 case10">
                                                            <div class="section-wrap">
                                                                <div class="section-util">
                                                                    <div class="btn-display align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/assets/upload/public/data/en/sustainability/governance/ethical/(SKN)Anti-bribery and Anti-corruption Compliance Regulations.pdf"><span class="btn-text">Download &lt;Anti-bribery and Anti-corruption Compliance Regulations&gt;</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <div class="section-figure">
                                                                        <img src="/assets/images/sustainability/policy-corruption-en.jpg" alt="This is an image of an anti-corruption policy. Please refer to the following for an explanation." style="min-width: 33.9rem;width: 100%">
                                                                        <div class="blind">
                                                                            <div>
                                                                                <strong>Anti-Corruption Policy</strong>
                                                                                <p>SK Networks has specified and developed the following Anti-Corruption Policy in a bid to ensure sustainable happiness of its people and stakeholders and foster a fair and transparent corporate culture.</p>
                                                                                <ol>
                                                                                    <li>All SK Networks people do not engage in corrupt acts.</li>
                                                                                    <li>All SK Networks people uphold domestic and international anti-corruption laws as well as corporate regulations/guidelines that are applicable to their business practies.</li>
                                                                                    <li>SK Networks implements anti-corruption control systems in conformity of global standards and continues to improve anti-corruption controls by monitoring the operation of the control systems.</li>
                                                                                    <li>SK Networks strictly disciplines its people in a transparent manner when they fail to comply with ethical standards and anti-corruption policies.</li>
                                                                                    <li>SK Networks guarantees the authority and independence of organizations and individuals responsible for enforcing anti-corruption controls.</li>
                                                                                    <li>All Members of SK Networks' management leadership spare no support in ensuring the efficient operation of anti-corruption control systems.</li>
                                                                                </ol>
                                                                                <div>
                                                                                    <p>CEO &amp; President<br>
                                                                                        Lee, Ho-jeong</p>
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
