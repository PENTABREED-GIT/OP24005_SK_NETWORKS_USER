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
    <title>AppraisalㆍRemuneration &lt; Career &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main career evaluation" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">Career</span></li>
                        <li class="data-item"><span class="item-text">AppraisalㆍRemuneration</span></li>

                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">AppraisalㆍRemuneration</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">AppraisalㆍRemuneration</div>
                    <div class="content-body">
                        <div class="section design1 type1 case1 performance">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Performance Appraisal</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list design18">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <em class="subject">Appraisal Targets</em>
                                                </div>
                                                <div class="board-figure">
                                                    <div class="pc-only">
                                                        <img src="/assets/images/career/icon-evaluation-target-en.svg" alt="All SK Networks People">
                                                    </div>
                                                    <div class="mo-only">
                                                        <img src="/assets/images/career/icon-evaluation-target-en-mo.svg" alt="All SK Networks People">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <em class="subject">Areas of appraisal</em>
                                                </div>
                                                <div class="board-figure">
                                                    <div class="pc-only">
                                                        <img src="/assets/images/career/icon-evaluation-area-en.svg" alt="SK Values, records, competence">
                                                    </div>
                                                    <div class="mo-only">
                                                        <img src="/assets/images/career/icon-evaluation-area-en-mo.svg" alt="SK Values, records, competence">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bullet-display design1 case1 type8">
                                        <ul class="data-list">
                                            <li class="data-item">Fair standards are applied for regular appraisal of competence, talents, job performance, etc.</li>
                                            <li class="data-item">Results are used to determine the criteria for promotion, transfer, training &amp; education, compensation, etc.</li>
                                            <li class="data-item">No unfair discrimination due to gender, age, academic background, etc</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 type1 bg-color compensation">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Remuneration</h4>
                                        <p class="section-summary">
                                            SK Networks offers a range of fair, competitive compensation measures in Total Reward terms based on capabilities and performance.
                                            In particular, the Company is actively using the Incentive Bonus scheme for additional monetary compensation linked with the Company’s performance. When the Company achieves an excellent management performance to be shared by the people through the scheme, the Company and the people can grow and develop together at the same time.
                                            In addition, we have institutes quarterly reward programs at the enterprise level to ensure that SKN people feel recognized and motivated to achieve higher levels of performance.
                                        </p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="title">Total Reward</div>
                                    <ul class="board-list design7 case1 type4">
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-figure">
                                                    <img src="/assets/images/career/compensation.svg" alt="">
                                                </div>
                                                <div class="board-info">
                                                    <strong class="board-name">Compensation</strong>
                                                    <ul class="board-txt">
                                                        <li>
                                                            <p class="para">Base Pay</p>
                                                            <p class="para">Annual salary system for all SK Networks people based on job duties, capabilities and performance</p>
                                                        </li>
                                                        <li>
                                                            <p class="para">IB (Incentive Bonus)</p>
                                                            <p class="para">Performance-related merits according to achievements made by unit organizations, mid-unit organizations and individuals</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-figure">
                                                    <img src="/assets/images/career/benefits.svg" alt="">
                                                </div>
                                                <div class="board-info">
                                                    <strong class="board-name">Welfare</strong>
                                                    <ul class="board-txt">
                                                        <li>
                                                            <p class="para">Various supports for work-life balance</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-figure">
                                                    <img src="/assets/images/career/talent.svg" alt="">
                                                </div>
                                                <div class="board-info">
                                                    <strong class="board-name">Performance &amp; Talent Management</strong>
                                                    <ul class="board-txt">
                                                        <li>
                                                            <p class="para">Continuous development</p>
                                                            <p class="para">Training opportunities, Career development programs</p>
                                                        </li>
                                                        <li>
                                                            <p class="para">Work environment</p>
                                                            <p class="para">Challenging tasks, recognition and encouragement, rewards, job stability, etc.</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 compensation">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Welfare &amp; Benefits</h4>
                                        <p class="section-summary">
                                            SK Networks has a welfare &amp; benefits system in place to create an environment where its people can devote themselves to pursue happiness and perform their work.
                                        </p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="post-list design3 case1 type1">
                                        <li class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/career/health.jpg" alt="">
                                                </div>
                                                <div class="post-inform">
                                                    <div class="post-head">
                                                        <div class="post-caption">Health</div>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">Health checkup expense</li>
                                                                <li class="data-item">Dental insurance</li>
                                                                <li class="data-item">Fitness center</li>
                                                                <li class="data-item">Health keeping support</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/career/wood.jpg" alt="">
                                                </div>
                                                <div class="post-inform">
                                                    <div class="post-head">
                                                        <div class="post-caption">休 (Resting and Recovery)</div>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">Resort/condominium membership in summer</li>
                                                                <li class="data-item">Club activity support</li>
                                                                <li class="data-item">For the Next 10 Years program<br class="mo-only"> (travel support to promote long-term service)</li>
                                                                <li class="data-item">Recharging leave</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/career/fam.jpg" alt="">
                                                </div>
                                                <div class="post-inform">
                                                    <div class="post-head">
                                                        <div class="post-caption">Family</div>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">Housing fund support</li>
                                                                <li class="data-item">In-house counselling office</li>
                                                                <li class="data-item">Life stability fund support</li>
                                                                <li class="data-item">Flextime support</li>
                                                                <li class="data-item">School tuition support for children</li>
                                                                <li class="data-item">Congratulatory money for school entry</li>
                                                                <li class="data-item">Financial planning support</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/career/due.jpg" alt="">
                                                </div>
                                                <div class="post-inform">
                                                    <div class="post-head">
                                                        <div class="post-caption">More</div>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">Long-term service reward</li>
                                                                <li class="data-item">SK Family Card</li>
                                                                <li class="data-item">Support for congratulations and condolences</li>
                                                                <li class="data-item">Transportation expense support</li>
                                                                <li class="data-item">Operating canteens and offering breakfast/lunch.</li>
                                                                <li class="data-item">Company brand discount</li>
                                                                <li class="data-item">Self-development subsidy/Selective welfare &amp; benefit support</li>
                                                                <li class="data-item">Supporting Self-design CoP (Supporting self-directed learning of SKN people to enhance their lifelong competitiveness.)</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="section-footer">
                                    <div class="btn-display align3">
                                        <div class="btn-area">
                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/career/평가보상/SKN_Benefit Programs to Enhance Employee Happiness and Well-being.pdf"><span class="btn-text">Download the employee benefit plan</span></a>
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
</body>

</html>