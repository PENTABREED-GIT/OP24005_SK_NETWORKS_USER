<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 24. 9. 3.
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>피닉스 랩 &lt; Business &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="https://unpkg.com/@studio-freight/lenis@1.0.32/dist/lenis.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            localAnimations_Case02();
        });
    </script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main business phnyxLab" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">피닉스 랩</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name en">Empower AI transformation for enterprises,<br class="pc-only"> ecoming an enterprise AI engine</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">피닉스 랩</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <picture>
                            <source media="(max-width: 1023px)" srcset="/assets/images/business/bg-local-head-business-phnyxLab-mo.jpg">
                            <img src="/assets/images/business/bg-local-head-business-phnyxLab-pc.jpg" alt="">
                        </picture>
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">피닉스 랩 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">피닉스 랩 (PhnyX Lab)</h3>
                                            <h4 class="sub-title">미국 실리콘밸리 AI 스타트업, 피닉스랩</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                피닉스 랩은 AI 기술 스타트업으로, 글로벌 첨단 기술의 산실인 미국 실리콘밸리에서 미래 혁신을 위한 AI 기술 및 서비스 제공을 위해 설립됐습니다.
                                            </p>
                                            <p class="para case2">
                                                검증 가능한 생성형 AI 솔루션으로 검색 프로세스를 혁신하고, 개인 업무 환경과 기업 문화에 근본적 변화를 일으킨다는 목표 아래, 전문 기술과 현지 네트워크를 바탕으로 글로벌 경쟁력을 갖춘 AI 기반 서비스를 개발하고 있습니다.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1 gen-ai">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">핵심 경쟁력 Modular RAG 기반의<br class="pc-only"> 기업용 Gen AI(생성형 AI) 솔루션 개발</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">피닉스랩의 핵심적인 아키텍처는 Modular RAG로, 거대 언어 모델*의 단점을 보완하는 것과 동시에 검색 증강 생성**에서 한 단계 더 고도화된 기술입니다.<br> 피닉스랩은 이를 활용한 기업용 AI 솔루션을 통해 정확하고 보안성 높으며 고객이 신뢰할 수 있는 정보를 실시간으로 제공합니다.</p>
                                    <div class="board-list design22 case1">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <span class="board-subject">Flexibility</span>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">유연한 구조와<br> 초개인화된 솔루션 제공</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <span class="board-subject">Security</span>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">Modular RAG 하이브리드 아키텍쳐 /<br> 기업 데이터는 VPC 저장</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <span class="board-subject">Scalability</span>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">여러 종류의 데이터를 저장소에 맞는<br> Module을 사용하여 최적화</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="comment design1">
                                        *거대 언어 모델(LLM) : Large Language Model<br> 
                                        **검색 증강 생성(RAG) : Retrieval-Augmented Generation<br> 
                                        ***VPC : Virtual Private Cloud
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1 product">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">주요 Product</h4>
                                        <p class="section-summary accent case4 color7">국내 최초 Modular RAG 기반 의약학 특화 솔루션, 케이론(Cheiron)</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">케이론(Cheiron)은 국내 최초 의약학 특화 생성형 AI 솔루션으로, 의학 학술 정보 분류 체계인 메쉬(Medical Subject Headings, MeSH) 키워드를 이해하고, 펍메드(PubMed), 시맨틱 스칼라(Semantic Scholar) 등 다양한 플랫폼을 활용하여 전문적인 정보를 제공합니다. 또한 일반 검색 엔진, 기업 내부 문서 등 다양한 출처의 데이터를 하나의 플랫폼에서 검색할 수 있어 업무 효율성을 높이는 것은 물론, 다양한 언어 서비스를 제공해 글로벌 확장성도 뛰어납니다.</p>
                                    <p class="para">피닉스랩은 케이론을 시작으로 다양한 산업 분야로 AI 솔루션을 확장하여 기업용 AI 민주화에 기여할 계획입니다.</p>
                                </div>
                            </div>
                        </div>
                        <c:if test="${not empty pressList}">
                            <div class="section design1 case3 type1 press">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">PRESS NOW</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="post-list design2 case1 type1">
                                            <c:forEach items="${pressList}" var="item" varStatus="status">
                                                <a href="/pr/news-room/${item.uid}" class="post-item">
                                                    <div class="post-wrap">
                                                        <div class="post-figure">
                                                            <c:choose>
                                                                <c:when test="${not empty item.addedFile}">
                                                                    <img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="press now 썸네일 이미지">
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </div>
                                                        <div class="post-inform">
                                                            <div class="post-head">
                                                                <p class="post-caption"><c:out value="${item.businessAreaNameKo}"/></p>
                                                                <p class="post-subject"><c:out value="${item.title}"/></p>
                                                                <p class="post-summary"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                                                            </div>
                                                            <p class="post-date" title="등록일"><c:out value="${item.regDate}"/></p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <c:set var="businessName" value="${item.businessAreaNameKo}"/>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="section-util btn-display align3">
                                        <div class="btn-area">
                                            <a class="btn design3 case1 type1 color2 ar-icon-plus-bg" href="/pr/news-room?currentPage=1&searchWord=<c:out value="${businessName}"/>"><span class="btn-text">더보기</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
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
</body>

</html>