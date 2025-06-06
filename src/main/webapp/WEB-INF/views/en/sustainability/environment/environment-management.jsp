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
    <title>Environmental management &lt; Environment &lt; Sustainability &lt; SK Networks</title>
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
            
            // showPop 파라미터가 있을 경우 페이지 접근 시 팝업창을 띄워주는 기능
            // https://www.sknetworks.co.kr/en/sustainability/environment/management?showPop << 해당 url
            const urlPrarams = new URLSearchParams(window.location.search);
            const showPop = urlPrarams.get('showPop');
            if(showPop != null) {
                setTimeout(() => {
                    const popSection = document.querySelector(".popSection");
                    const distanceFromTop = popSection.getBoundingClientRect().top;
                    window.scrollTo({
                        top: distanceFromTop - 377.375,
                        behavior: 'smooth',
                        duration: 300
                    });
                    setTimeout(() => {
                        document.querySelector('button[data-bs-target="#modalLaw"]').click();
                    }, 700);
                }, 100);
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
    <div class="main esg environmental" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Environment</span></li>
                            <li class="data-item"><span class="item-text">Environmental management</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Managing Business for<br class="pc-only"> a Sustainable Earth</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Environment management</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-natural.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Environment management</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 case2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Purpose &amp; Scope</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">To effectively cope with environmental regulations addressing climate change and efficiently control environmental impacts, SK Networks has implemented and managed an environmental management system covering the entire business processes of its head office on the basis of ISO14001:2015 certification scheme.
                                        SK Networks engages its people in preventing environmental disasters and delivering systematic response, develops environmental management strategies aligned with environmental laws/regulations, and identifies requirements from various interested parties in and out of the company to proactively inform and upgrade environmental management practices.</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1 popSection">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Operating process</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        SK Networks has implemented an environmental document management system architecture and developed environmental management system operation regulations and guidelines informed by planning, operation and performance for efficient operation, registering one regulation and three guidelines as enterprise-wide in-house rules to be shared by all its people.</p>
                                    <p class="para">In particular, environmental management system operation processes based on PDCA in ISO14001:2015 requirements have been rolled out and environmental policies have been established as informed by understanding of environmental aspects and impacts, issues and risks, and <button data-bs-toggle="modal" data-bs-target="#modalLaw">compliance with environmental laws/regulations</button> , with environmental objectives and action plans developed accordingly.
                                        Environmental performance is also monitored regularly and conformity to ISO14001:2015 requirements is assessed each year by Internal Audit and certification renewal assessment by a third party verification agency, which triggers continual improvement based on nonconformity findings or recommendations.</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type2 table">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">* Environment Management System Education</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 960px;" class="col-w-1">
                                            <caption>This table provides educational information on the environmental management system and consists of training date, training name, training target, place, purpose, and training content.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                                <col class="col5">
                                                <col class="col6">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Title</th>
                                                    <th scope="col">Target of education</th>
                                                    <th scope="col">Place</th>
                                                    <th scope="col">Educational objective</th>
                                                    <th scope="col">Content</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2022.06.20</td>
                                                    <td>Introduction to ISO 14001</td>
                                                    <td>Employees of each organization subject to this project</td>
                                                    <td>Head office</td>
                                                    <td>Understanding the Environmental Management System</td>
                                                    <td>Introduction and explanation of environmental management certification</td>
                                                </tr>
                                                <tr>
                                                    <td>2022.07.28</td>
                                                    <td>Training for ISO14001 Internal Auditors</td>
                                                    <td>ISO14001 Internal Auditors</td>
                                                    <td>Online education</td>
                                                    <td>Implementation and Performance Sharing of Environmental Management System</td>
                                                    <td>Planning / Operation / Performance / Results Sharing of ISO 14001</td>
                                                </tr>
                                                <tr>
                                                    <td>2023.09.08</td>
                                                    <td>ISO14001 internal assessor training</td>
                                                    <td>ISO14001 internal assessors</td>
                                                    <td>Online training</td>
                                                    <td>To improve the performance &amp; compliance of environmental management system</td>
                                                    <td>ISO14001 planning/operation/performance &amp; requirements</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type2">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/env-policy-en.jpg" alt="This is the image of the environmental policy of SK Networks Co., Ltd. Please refer to the details below for more information.">
                                                </div>
                                                <div class="blind">
                                                    <strong>Environmental Policy</strong>
                                                    <p>SK Networks Co., Ltd. addresses social challenges together with customers on the basis of ESG management and seeks to create sustainable values.</p>
                                                    <p>In particular, we actively engage in addressing environmental challenges resulting from climate challenges and pursue eco-friendly business practices to fulfill our social responsibilities by:</p>
                                                    <ol>
                                                        <li>Complying with international environmental instruments and domestic laws/regulations governing business practices and delivering on agreements with interested parties to fulfill corporate responsibilities imposed by society at large.</li>
                                                        <li>Fostering eco-friendly business practices and culture and rolling out an environmental management system conforming to KS I ISO 14001, with active commitment to fulfilling environmental responsibilities with continual delivery and improvement.</li>
                                                        <li>Developing Net Zero 2040 as CO2 emissions reduction target and implementing strategies to meet the target in a bid to actively respond to environmental issues including climate change.</li>
                                                        <li>Encouraging all SK Networks people to hold themselves accountable to eco-friendly management practices and internalize environmental policies in their business conduct anchored on commitment.</li>
                                                        <li>Releasing accurate environmental data to external stakeholders with transparency and actively participating in eco-friendly campaigns in partnership with local communities.</li>
                                                    </ol>
                                                    <p>CEO &amp; President</p>
                                                    <p>Lee, Ho-jeong</p>
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
        <!-- Modal -->
        <div class="modal design1 medium" id="modalLaw" tabindex="-1" aria-labelledby="modalLawLabel" aria-hidden="true">
            <div class="modal-inner modal-dialog">
                <div class="modal-area">
                    <div class="modal-wrap">
                        <div class="modal-list">
                            <div class="modal-item">
                                <div class="modal-head" id="modalLawLabel">
                                    <em class="modal-subjec"><span class="modal-name">Law/Regulatory Management System and Response Strategy</span></em>
                                </div>
                                <div class="modal-body">
                                    <div class="section design1 case7 type4 align1">
                                        <div class="section-wrap">
                                            <div class="section-body">
                                                <p class="para">
                                                    Environmental law/regulatory management system has been established and operated based on the PDCA cycle as set forth in ISO 14001. We prepare an environmental law compliance evaluation table and monitor it at least once a year to evaluate the compliance status and establish response strategies to come up with corrective actions when nonconformance is identified. 
                                                </p>
                                                <p class="para">
                                                    We conducted a compliance evaluation for a total of 7 environmental law provisions for the major management activities in 2023, and no nonconformance has been found out. We plan to conduct an environmental law compliance evaluation every year and continuously manage and respond by ensuring the validity of the results and corrective actions.
                                                </p>
                                            </div>

                                            <div class="t-display design2 case1 type1 align1 scroll">
                                                <table class="col-w-2">
                                                    <caption>This table provides information on environmental law regulatory management systems and response strategies and consists of Plan, Do, Check, and Action.</caption>
                                                    <colgroup>
                                                        <col class="col1">
                                                        <col class="col2">
                                                        <col class="col3">
                                                        <col class="col4">
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col" colspan="4">Environmental Laws and Regulations Management System and Response Strategy</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td rowspan="9" class="t-bg">Plan</td>
                                                            <td rowspan="4" class="align3">Organizational Context</td>
                                                            <td>Understanding the Organization and Its Context</td>
                                                            <td>Identify and analyze key internal and external issues to gain a comprehensive understanding of the organization and its context. Additionally, evaluate the relevant environmental laws and requirements applicable to the organizations’ activities, products, and services.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Understanding Stakeholder Needs and Expectations</td>
                                                            <td>Identify compliance obligations related to internal and external stakeholders based on environmental laws. Regularly review and update these obligations by checking for changes or new enactments in relevant laws, at least once a year.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Determining the Scope of the Environmental Management System</td>
                                                            <td rowspan="2">Incorporate identified compliance obligations into the environmental management system, determine their applicability for each organizational unit, and ensure proper documentation and management.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Environmental Management System</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="3" class="align3">Leadership</td>
                                                            <td>Leadership and Commitment</td>
                                                            <td rowspan="3">Develop an environmental policy that aligns with the requirements of relevant environmental regulations, clearly defining the roles, responsibilities, and authorities within each organization.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Environmental Policy</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Organizational Roles, Responsibilities and Authorities</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="2" class="align3">Planning</td>
                                                            <td>Actions to Address Risks and Opportunities</td>
                                                            <td rowspan="2">1.Identify environmental aspects. and conduct their impact assessment<br>
                                                                2.Identify environmental issues and conduct a risk assessment.<br>
                                                                3.Identify applicable environmental regulations and conduct a compliance assessment*.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Environmental Policy</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="7" class="t-bg">Do</td>
                                                            <td rowspan="5" class="align3">Support</td>
                                                            <td>Resources</td>
                                                            <td rowspan="2">Evaluate and manage the qualifications and competencies of physical and human resources based on environmental regulations.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Competence</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Awareness</td>
                                                            <td>Enhance employee awareness and understanding of environmental regulations through targeted training.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Communication</td>
                                                            <td rowspan="4">Document and communicate information on violations, incidents, and accidents related to environmental regulations and associated rules, including details on the subjects and timing, through internal communication channels.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Documented Information</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="2" class="align3">Operation</td>
                                                            <td>Operational Planning and Control</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Emergency Preparedness and Response</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="3" class="t-bg">Check</td>
                                                            <td rowspan="3" class="align3">Performance Evaluation</td>
                                                            <td>Monitoring, Measurement, Analysis and Evaluation</td>
                                                            <td rowspan="3">Prepare a final evaluation report based on the results of the environmental compliance assessment and present it to the management.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Environmental Policy</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Organizational Roles, Responsibilities and Authorities</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="3" class="t-bg">Action</td>
                                                            <td rowspan="3" class="align3">Improvement</td>
                                                            <td>General</td>
                                                            <td rowspan="3">1.Select corrective actions for violations of regulatory compliance obligations.<br>
                                                                2.Review targets for corrective action and issue requirements for improvements to carry out these actions.<br>
                                                                3.Verify the results of corrective actions and evaluate their completion using a corrective action management log.<br>
                                                                4.Ensure the sustained effectiveness of outcomes through annual internal audits or ongoing monitoring.</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nonconformity and Corrective Action</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Continual Improvement</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <p class="comment design1">* Conducting Legal Compliance Assessment<br>
                                                1.The department head is responsible for establishing a plan to evaluate the Company’s compliance with applicable environmental laws and other requirements.<br>
                                                2.The department head shall create an environmental law register based on relevant laws, regulations and other requirements for compliance assessment, prepare an environmental law compliance assessment form that includes inspection criteria, and appoint a person to oversee and conduct the compliance assessment.<br>
                                                3.The department head shall submit the compliance assessment results to the Environmental Management Officer, who will review the final results and report any significant violations to the CEO. If the compliance assessment results do not meet the compliance obligations of the relevant laws and regulations, appropriate corrective measures shall be taken.<br>
                                                4.The department head is also responsible for maintaining, improving, and managing the compliance assessment results.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-item">
                                <div class="modal-head">
                                    <div class="modal-subjec">
                                        <span class="modal-name">Law/Regulatory Management System and Response Strategy</span>
                                        <div class="modal-caption">2023 Environmental Compliance Evaluation Table</div>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="section design1 case7 type4 align1">
                                        <div class="section-wrap">
                                            <div class="section-body">
                                                <div class="t-display design3 case1 type1 align1 scroll">
                                                    <table style="min-width: 704px;" class="col-w-3">
                                                        <caption>This table provides information on legal/regulatory management systems and response strategies and consists of an environmental compliance assessment table, inspection date, inspection department, and inspector.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" colspan="2">Environmental Compliance Evaluation Table</th>
                                                                <th scope="col">Inspection Date</th>
                                                                <th scope="col" class="align3">Oct 30, 2023</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="t-bg align3">Laws/<br>Regulations</td>
                                                                <td class="align3">Waste Control Act, etc.</td>
                                                                <td class="align3 bl-bg">Inspection Dept</td>
                                                                <td class="align3">SV Promotion Team</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="t-bg align3">Control No.</td>
                                                                <td class="align3">ENV-01</td>
                                                                <td class="align3 bl-bg">Inspector</td>
                                                                <td class="align3">(Name)</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div class="t-display design4 case1 type1 align1 scroll">
                                                    <table style="min-width: 704px;" class="col-w-4">
                                                        <caption>This table provides information on legal/regulatory management systems and response strategies and consists of provisions and items of law, checks, compliance assessments, and actions.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                            <col class="col6">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" rowspan="2">Legal Provisions and Items</th>
                                                                <th scope="col" rowspan="2">Inspection Description</th>
                                                                <th scope="col" colspan="3">Compliance Assessment</th>
                                                                <th scope="col" rowspan="2">Measures</th>
                                                            </tr>
                                                            <tr>
                                                                <th scope="col" class="t-bg">Pass</th>
                                                                <th scope="col" class="t-bg">Fail</th>
                                                                <th scope="col" class="t-bg">N/A</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Article 15<br> (Cooperation of Household Waste Dischargers in Treatment)</td>
                                                                <td>A household waste discharger shall install a storage facility necessary to separate shall separately keep such wastes by type, nature, and condition</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good1">
                                                                                    <input type="radio" name="suit" value="s1" id="good1">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad1">
                                                                                    <input type="radio" name="suit" value="s2" id="bad1" checked>
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none1">
                                                                                    <input type="radio" name="suit" value="s3" id="none1">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Article 15-2<br> (Obligations of Persons Discharging Food Wastes)</td>
                                                                <td>A person discharging food wastes shall report on his or her plan to restrain the generation of food wastes and properly treat</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good2">
                                                                                    <input type="radio" name="suit1" value="s4" id="good2" checked>
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad2">
                                                                                    <input type="radio" name="suit1" value="s5" id="bad2">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none2">
                                                                                    <input type="radio" name="suit1" value="s6" id="none2">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Article 15-2<br> (Obligations of Persons Discharging Food Wastes)</td>
                                                                <td>A person discharging food wastes shall report a contract for consignment processing when consigning processing</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good3">
                                                                                    <input type="radio" name="suit2" value="s7" id="good3" checked>
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad3">
                                                                                    <input type="radio" name="suit2" value="s8" id="bad3">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none3">
                                                                                    <input type="radio" name="suit2" value="s9" id="none3">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Act On The Promotion Of Saving And Recycling Of Resources Article 12 (Waste Charges)</td>
                                                                <td>Calculation and imposition of waste charge imposed on manufacturers (manufacturers of products containing plastic (synthetic resin), OEM manufacturers, and importers)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good4">
                                                                                    <input type="radio" name="suit3" value="s10" id="good4" checked>
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad4">
                                                                                    <input type="radio" name="suit3" value="s11" id="bad4">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none4">
                                                                                    <input type="radio" name="suit3" value="s12" id="none4">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Act On The Promotion Of Saving And Recycling Of Resources Article 16 (Obligations of Manufacturers to Recycle)</td>
                                                                <td>A producer with recycling obligations(For tires, imported car parts, and PB parts synthetic composite films)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good5">
                                                                                    <input type="radio" name="suit4" value="s13" id="good5" checked>
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad5">
                                                                                    <input type="radio" name="suit4" value="s14" id="bad5">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none5">
                                                                                    <input type="radio" name="suit4" value="s15" id="none5">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Act On Resource Circulation Of Electrical And Electronic Equipment And Vehicles Article 16-4 (Duty of Distributors of Electrical and Electronic Equipment to Collect and Transfer)</td>
                                                                <td>A person may provide a portion of the collected charges for recycling to the entrusted institution after joining E-Cycle Governance (2022.12.23~) (For information and communication device distribution sellers)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good6">
                                                                                    <input type="radio" name="suit5" value="s16" id="good6" checked>
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad6">
                                                                                    <input type="radio" name="suit5" value="s17" id="bad6">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none6">
                                                                                    <input type="radio" name="suit5" value="s18" id="none6">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Environmental Technology And Industry Support Act Article 16-8</td>
                                                                <td>Preparation and Disclosure of Environmental Information (June 30 every year)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good7">
                                                                                    <input type="radio" name="suit6" value="s19" id="good7" checked>
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad7">
                                                                                    <input type="radio" name="suit6" value="s20" id="bad7">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none7">
                                                                                    <input type="radio" name="suit6" value="s21" id="none7">
                                                                                    <span class="option"></span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-fuc">
                        <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
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
