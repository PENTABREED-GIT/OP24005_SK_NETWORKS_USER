<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>평가ㆍ보상 &lt; Career &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
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
    <div class="main career evaluation" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">Career</span></li>
                        <li class="data-item"><span class="item-text">평가ㆍ보상</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">평가ㆍ보상</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">평가ㆍ보상 페이지</div>
                    <div class="content-body">
                        <div class="section design1 type1 case1 performance">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">성과평가</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list design18">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <em class="subject">평가 대상</em>
                                                </div>
                                                <div class="board-figure">
                                                    <div class="pc-only">
                                                        <img src="/assets/images/career/icon-evaluation-target.svg" alt="전 구성원">
                                                    </div>
                                                    <div class="mo-only">
                                                        <img src="/assets/images/career/icon-evaluation-target-mo.svg" alt="전 구성원">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <em class="subject">평가 영역</em>
                                                </div>
                                                <div class="board-figure">
                                                    <div class="pc-only">
                                                        <img src="/assets/images/career/icon-evaluation-area.svg" alt="SK Values, 역량, 실적">
                                                    </div>
                                                    <div class="mo-only">
                                                        <img src="/assets/images/career/icon-evaluation-area-mo.svg" alt="SK Values, 역량, 실적">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bullet-display design1 case1 type8">
                                        <ul class="data-list">
                                            <li class="data-item">공정한 기준을 통해 역량과 자질, 업무 실적 등을 정기적으로 평가</li>
                                            <li class="data-item">승진, 이동, 교육훈련 및 보상 등의 기준 지표로 활용</li>
                                            <li class="data-item">성별, 나이, 학력 등에 의한 부당한 차별 없음</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 type1 bg-color compensation">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">보상</h4>
                                        <div class="section-summary">
                                            SK네트웍스는 총보상(Total Reward) 관점에서 능력과 성과에 따라 공정하고 경쟁력 있는 여러 보상 항목을 운영하고 있습니다.<br>특히 회사의 성과에 따라 추가적으로 지급하는 Incentive Bonus 제도를 적극적으로 운영하여 회사가 탁월한 경영성과를 창출했을 경우 구성원들이 그 성과를 함께 나눌 수 있도록 함으로써 회사와 구성원이 동시에 성장 발전하도록 하고 있습니다.<br>또한 확실한 성과 보상이 가능하도록 분기 단위 전사 포상제도를 운영함으로써 구성원에게 동기부여 및 보다 높은 성과를 실현할 수 있는 환경을 마련하고 있습니다.
                                        </div>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="title">총보상 (Total Reward)</div>
                                    <ul class="board-list design7 case1 type4">
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-figure">
                                                    <img src="/assets/images/career/compensation.svg" alt="">
                                                </div>
                                                <div class="board-info">
                                                    <strong class="board-name">보상</strong>
                                                    <ul class="board-txt">
                                                        <li>
                                                            <p class="para">기본연봉</p>
                                                            <p class="para">직무,능력,성과에 따른 <span class="text-bundle">전 구성원 연봉제 적용</span></p>
                                                        </li>
                                                        <li>
                                                            <p class="para">IB</p>
                                                            <p class="para">단위 및 중기 단위 조직 및 개인성과에 따른 성과급</p>
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
                                                    <strong class="board-name">복리후생</strong>
                                                    <ul class="board-txt">
                                                        <li>
                                                            <p class="para">일과 삶의 균형을<br>위한 각종 지원</p>
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
                                                    <strong class="board-name">성과&amp;인재 관리</strong>
                                                    <ul class="board-txt">
                                                        <li>
                                                            <p class="para">지속적인 육성</p>
                                                            <p class="para">교육 기회 제공,<br>경력개발 프로그램</p>
                                                        </li>
                                                        <li>
                                                            <p class="para">근무 환경</p>
                                                            <p class="para">도전적인 일, 인정과 격려,<br>포상, 고용 안정 등</p>
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
                                        <h4 class="section-name">복리후생</h4>
                                        <div class="section-summary">
                                            SK네트웍스는 구성원의 행복 추구, 업무에 몰입할 수 있는 환경을 조성하기 위해 복리후생 제도를 운영하고 있습니다.
                                        </div>
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
                                                                <li class="data-item">건강검진</li>
                                                                <li class="data-item">피트니스센터 운영</li>
                                                                <li class="data-item">의료비 및 치과보험 지원</li>
                                                                <li class="data-item">헬스키퍼 운영</li>
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
                                                        <div class="post-caption">休</div>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">하계 휴양소/콘도 운영</li>
                                                                <li class="data-item">동호회 지원</li>
                                                                <li class="data-item">「For the next 10 years」 Program<br class="mo-only"> (장기근속 장려의 여행지원)</li>
                                                                <li class="data-item">재충전 휴가</li>
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
                                                                <li class="data-item">주택자금 지원</li>
                                                                <li class="data-item">사내 상담실 운영</li>
                                                                <li class="data-item">생활안정자금 지원</li>
                                                                <li class="data-item">Flextime 지원</li>
                                                                <li class="data-item">보육시설 운영</li>
                                                                <li class="data-item">자녀 학자금 지원</li>
                                                                <li class="data-item">재무설계 지원</li>
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
                                                        <div class="post-caption">기타</div>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">근속포상</li>
                                                                <li class="data-item">SK Family Card</li>
                                                                <li class="data-item">경조사 지원</li>
                                                                <li class="data-item">통신비 지원</li>
                                                                <li class="data-item">사내식당 운영 및 조/중식 지원</li>
                                                                <li class="data-item">자사 브랜드 할인</li>
                                                                <li class="data-item">자기개발비 및 선택적 복리후생 지원</li>
                                                                <li class="data-item">Self-design CoP 지원<br>(구성원 생애경쟁력 강화 위한 스스로의 학습 지원)</li>
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
                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/career/평가보상/SKN_구성원 대상 일과 삶의 균형을 위한 복지 프로그램.pdf"><span class="btn-text">구성원 복지 제도 다운로드</span></a>
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
</body>

</html>