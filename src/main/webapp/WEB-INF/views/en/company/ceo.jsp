<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CEO Message &lt; Company &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const pallarax = $(".pallarax").toArray();
            const io = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    if (entry.intersectionRatio > 0.1) {
                        entry.target.classList.add("active")
                    }
                })
            }, {
                threshold: [0.1]
            })
            pallarax.forEach(element => {
                io.observe(element);
            });
        })
    </script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main company greetings" id="main">
        <div class="main-inner">
            <div class="local case2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Company</span></li>
                            <li class="data-item"><span class="item-text">CEO Message</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">We will realize our vision as an AI company and collaborate with diverse stakeholders to build a sustainable future.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">CEO Message</h3>
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
                    <div class="content-head blind">CEO Message</div>
                    <div class="content-body">
                        <div class="section design1 representative-greetings pallarax">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="data-display">
                                        <div class="data-head">
                                            <h4 class="data-name">
                                                We are pleased to welcome you<br class="pc-only">
                                                to the SK Networks website.
                                            </h4>
                                        </div>
                                        <div class="data-body">
                                            <p class="para">
                                                Since our founding in 1953, SK Networks has continuously enhanced stakeholder value—including for customers and shareholders—by transforming our business model in response to changing times. As we enter the era of rapidly advancing AI, we are preparing to seize new opportunities by focusing on the following key initiatives in 2025.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="data-figure">
                                        <div class="img-wrap">
                                            <img src="/assets/images/company/greetings-ceo-pc.jpg" alt="Lee-Ho Jeong">
                                        </div>
                                        <div class="caption-wrap">
                                            <span class="position">CEO & President</span>
                                            <strong class="name">Lee-Ho Jeong</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 direction1 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        We will further strengthen the core competitiveness of our existing businesses to ensure solid and consistent profitability.
                                    </h4>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        By enhancing operational efficiency and building a stable revenue-generating structure, we aim to become a sound and resilient company that achieves sustainable growth through unmatched operational strength.                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 direction2 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        We will identify future growth drivers powered by AI and establish a strategic direction aligned with an AI-centric business model.
                                    </h4>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        Going beyond the integration of AI into existing businesses, we will continue to explore new AI-driven business opportunities. Phoenix Lab, a startup launched as an independent entity under SK Networks, has introduced "Cheiron," a solution specifically designed for medical and pharmaceutical applications, based on Korea’s first modular RAG (Retrieval-Augmented Generation). Additionally, en-core is contributing to AI transformation by helping companies monetize their data assets through the launch of a data solution featuring generative AI-powered automation. Through such efforts, SK Networks will continue to identify and support high-potential companies within the AI value chain to accelerate future growth.                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type5 pallarax">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">
                                        We will build the capabilities and organizational culture needed to realize our vision as an AI company.
                                    </h4>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        In line with our transition toward becoming an AI company, we will cultivate an environment and culture where all members grow together, working with the belief that the future can be even more fulfilling than today.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 closing pallarax">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">
                                        SK Networks is proud of its 72-year history of overcoming challenges and achieving successes amid rapidly changing market conditions. Building on this foundation, we will continue to strengthen our core competitiveness while driving innovation through AI to unlock new opportunities for tomorrow.
                                    </p>
                                    <p class="para">
                                        We sincerely ask for your continued interest and support as we shape the next chapter of transformation.
                                    </p>
                                    <p class="closing-comment">
                                        Thank you.
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
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
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