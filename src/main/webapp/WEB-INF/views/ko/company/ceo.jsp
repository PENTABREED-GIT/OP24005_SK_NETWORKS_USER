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
                                            <p class="para">1953년 창립 이후, 시대 변화에 발맞춘 사업 모델 혁신으로 고객, 주주 등 이해관계자 가치를 높여온 SK네트웍스는 새로운 도약과 장기적 관점의 성장을 이루어 나가기 위해 2024년 세 가지 핵심 과제를 적극 추진해 나가겠습니다.</p>
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
                                        AI Company 진화를<br>
                                        적극 실천하겠습니다.
                                    </h4>
                                    <p class="section-summary">
                                        SK네트웍스는 AI 시대를 맞아 다시 한번 새로운 미래를 준비해 나가고자 합니다.
                                    </p>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        AI는 현존하는 가장 강력한 트렌드로 마치 전기와 같이 모든 산업, 개인의 일상생활에 스며 들 것이며, 향후 AI를 도입한 기업과 그렇지 않은 기업과의 격차는 시간이 지날수록 극복하기 어려워질 정도로 커질 것입니다. 특히, SK매직, 워커힐, 엔코아 등의 사업에 AI를 접목하여 상호 시너지를 창출하고 유기적으로 성장하는 모습을 보여 드리겠습니다. 뿐만 아니라, 새로운 성장 동력을 확보하기 위해 AI영역에서 신규 M&A 기회도 지속적으로 모색해 나가겠습니다. SK네트웍스는 궁극적으로 AI 기술을 활용하여 다양한 상품과 혜택을 제공하고, 가치 창출을 극대화하는 기업이 되고자 합니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 direction2 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        건전한 재무구조를<br>
                                        지속 확보하겠습니다.
                                    </h4>
                                    <p class="section-summary">
                                        성공적인 변화를 위해서는 안정적인 재무구조가 필수적입니다.
                                    </p>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        당사는 핵심 사업의 수익성을 지속 관리하면서 영업이익률을 개선하고 신용등급 관리 등 재무 안정성을 더욱 공고히 해 나가겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        주주 환원을<br>
                                        보다 강화해 나가겠습니다.
                                    </h4>
                                    <p class="section-summary">
                                        SK네트웍스는 다년간 주주 환원 강화 방안에 대해 깊이 고민해 왔습니다.
                                    </p>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        이에 2023년부터 적극적인 IR 활동을 통해 시장과의 소통을 늘렸으며, 자기주식 매입과 소각을 실행했습니다. 또한, 본체 및 자회사 배당 수익 기반의 사업수익과 투자 성과 수익을 배당을 위한 재원으로 삼아 성과에 연동하는 배당 정책을 운영할 계획입니다. 더불어 사업수익의 상당 부분을 정기배당으로 상반기에 지급하고, 중간배당을 도입해 사업수익과 투자수익의 일부를 추가로 주주 환원에 사용하려 합니다. 앞으로 주주환원에 대한 진정성을 보여 드림으로써 SK네트웍스에 대한 주주 여러분들의 믿음과 신뢰에 보답할 수 있도록 하겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 closing pallarax">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">
                                        SK네트웍스는 앞서 말씀 드린 바와 같이 ‘AI Company’로의 진화를 추진하는 데 있어 시장 및<br class="pc-only"> 다양한 이해관계자와
                                        투명하게 소통하면서 비전을 실현할 수 있도록 하겠습니다.
                                    </p>
                                    <p class="para">
                                        또한, 이를 통해 회사의 지속적인 발전을 도모하고 주주가치를 제고할 수 있도록 끊임 없이 고민하고 노력을 다할 것을 약속 드립니다.<br>
                                        새로운 미래를 준비하는 당사의 여정에 주주 여러분들의 많은 관심과 성원을 부탁 드립니다.
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