<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>CEO 인사말 &lt; Company &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
            const pallarax = $(".pallarax").toArray();
                const io = new IntersectionObserver(entries => {
                    entries.forEach(entry => {
                        if(entry.intersectionRatio > 0.1) {
                            entry.target.classList.add("active")
                        }
                    })
                }, {
                    threshold: [0.1]
                })
                pallarax.forEach(element => {
                    io.observe(element);
                });
            });
    </script>

    <script src="/assets/js/lenis.js"></script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main company greetings" id="main">
        <div class="main-inner">
            <div class="local case2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Company</span></li>
                            <li class="data-item"><span class="item-text">CEO 인사말</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">AI Company로서의 비전을 현실화하고 이해관계자들과 함께 지속가능한 미래를<br> 그려 나가겠습니다.</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">CEO 인사말</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/company/bg-local-head-greetings-pc.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">CEO 인사말 페이지</div>
                    <div class="content-body">
                        <div class="section design1 representative-greetings pallarax">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="data-display">
                                        <div class="data-head">
                                            <h4 class="data-name">
                                                안녕하십니까?<br>
                                                SK네트웍스 홈페이지를 방문해주셔서 진심으로 감사 드립니다.
                                            </h4>
                                        </div>
                                        <div class="data-body">
                                            <p class="para">
                                                SK네트웍스는 1953년 창립 이후, 시대 변화에 발맞춘 사업 모델 혁신으로 고객, 주주 등 이해관계자 가치를 높여왔습니다. 빠른 속도로 성큼 다가온 AI 시대에 새로운 기회를 만들어 갈 수 있도록 2025년 다음과 같은 과제들을 중점으로 추진해 나가고자 합니다.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="data-figure">
                                        <div class="img-wrap">
                                            <img src="/assets/images/company/greetings-ceo-pc.jpg" alt="대표이사 사장 이 호 정">
                                        </div>
                                        <div class="caption-wrap">
                                            <span class="position">대표이사 사장</span>
                                            <strong class="name">이 호 정</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 direction1 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        기존 사업들의 핵심 경쟁력을 더욱 강화해 나가며<br>
                                        단단한 수익력을 지속 확보해 나가겠습니다.
                                    </h4>
                                    <%--<p class="section-summary">--%>
                                    <%--    SK네트웍스는 AI 시대를 맞아 다시 한번 새로운 미래를 준비해 나가고자 합니다.--%>
                                    <%--</p>--%>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        사업 효율성을 더욱 높이고, 안정적인 수익 창출 구조를 통해 그 어떤 기업보다도 강한 오퍼레이션으로 지속가능한 성장을 이뤄 나가는 건실한 회사로 거듭나겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 direction2 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        AI 중심의 미래 성장동력을 구체화하여 AI 성장<br class="pc-only"> 방향성과 사업모델을 정립해 나가겠습니다.
                                    </h4>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        기존 사업에 AI를 접목하는 것에서 더 나아가 AI 기반 신규 사업 기회를 지속 탐색해 나가겠습니다. SK네트웍스 산하 독립 법인으로 출범한 스타트업 피닉스랩은 국내 최초 모듈러 RAG에 기반하여 의약학에 특화된 솔루션 ‘케이론’을 선보였고, 엔코아는 생성형 AI 기반 자동화 기능이 탑재된 데이터 솔루션 출시를 통해 기업의 데이터 자산화를 지원함으로써 AI 전환에 기여하고 있습니다. 이처럼 SK네트웍스는 AI 밸류체인 내 뛰어난 역량과 잠재력을 보유한 기업을 발굴하여 미래 성장을 가속화해 나갈 수 있도록 노력을 다하겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        AI Company 비전에 걸맞은 역량과 조직문화를<br class="pc-only"> 구축해 나가겠습니다.
                                    </h4>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        AI Company로 전환해 나가는 방향성에 맞춰 구성원 모두가 함께 성장하며 지금보다 미래가 행복해질 수 있다는 믿음 속에서 일할 수 있는 환경과 문화를 만들겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 closing pallarax">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">
                                        SK네트웍스는 창립 후 지난 72년 동안 급변하는 시장 환경 속에서도 수많은 도전과 성공을 이뤄낸 역사가 있습니다. 이를 바탕으로 본원적 경쟁력을 강화하는 동시에 AI를 통한 혁신을 실현하여 내일의 기회를 만들어 가겠습니다.
                                    </p>
                                    <p class="para">
                                        앞으로 당사가 만들어 나갈 변화의 순간들을 함께 지켜봐 주시고 많은 관심과 성원을 부탁드립니다.
                                    </p>
                                    <p class="closing-comment">
                                        감사합니다.
                                    </p>
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
<script>
    $(document).ready(function() {
        localAnimations_Case02();
    });
</script>
</body>

</html>