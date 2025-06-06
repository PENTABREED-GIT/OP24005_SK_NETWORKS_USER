<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>History &lt; Company &lt; SK Networks</title>
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
            gsap.registerPlugin(ScrollTrigger);

            var scrollSpy = new bootstrap.ScrollSpy(document.body, {
                target: '#navbar-history'
            });

            document.querySelectorAll('.anchor-display a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function (e) {
                    e.preventDefault();
                    document.querySelector(this.getAttribute('href')).scrollIntoView({
                        behavior: 'smooth'
                    });
                });
            });

            let setupTriggers = [];

            function getStartValue(type) {
                if (type === 1) {
                    return window.innerWidth >= 1200 ? 'top 12' : 'top 5';
                } else if (type === 2) {
                    return window.innerWidth >= 1200 ? 'top 13%' : 'top top';
                }
            }

            function setupScrollTrigger() {
                setupTriggers.forEach(trigger => trigger.kill());
                setupTriggers = [];

                const hisItem = document.querySelectorAll('.history-list .history-item');
                const hisAnchor = document.querySelector('.anchor-area');
                const mainHis = document.querySelector('.main.company.history');
                const wrapHis = mainHis.closest('#wrap');
                const wrapHead = wrapHis.querySelector('.local-head');
                const bodyHis = mainHis.querySelector('.content-body');

                hisItem.forEach(item => {
                    const progressBar = item.querySelector('.progress-bar');

                    setupTriggers.push(
                        gsap.to(item, {
                            scrollTrigger: {
                                trigger: item,
                                start: getStartValue(1),
                                end: 'bottom bottom',
                                onEnter: () => {
                                    item.classList.add('active1');
                                },
                                onLeaveBack: () => {
                                    item.classList.remove('active1');
                                },
                            },
                        })
                    );

                    setupTriggers.push(
                        gsap.to(item, {
                            scrollTrigger: {
                                trigger: item,
                                start: getStartValue(2),
                                end: 'bottom bottom',
                                onEnter: () => {
                                    item.classList.add('active2');
                                },
                                onLeaveBack: () => {
                                    item.classList.remove('active2');
                                },
                            },
                        })
                    );

                    function updateProgress(self) {
                        const progress = self.progress;
                        progressBar.style.width = (progress * 100) + '%';
                    }

                    setupTriggers.push(
                        gsap.to(progressBar, {
                            width: '100%',
                            scrollTrigger: {
                                trigger: item,
                                start: 'top 7%',
                                end: 'bottom+=5% bottom',
                                scrub: true,
                                onUpdate: updateProgress,
                            },
                        })
                    );
                });

                setupTriggers.push(
                    ScrollTrigger.create({
                        trigger: bodyHis,
                        start: "top 2",
                        end: "bottom bottom",
                        onEnter: () => {
                            hisAnchor.classList.add('fixed');
                            wrapHis.style.overflow = 'visible';
                            wrapHead.style.overflow = 'hidden';
                        },
                        onLeaveBack: () => {
                            hisAnchor.classList.remove('fixed');
                            wrapHis.style.overflow = '';
                            wrapHead.style.overflow = '';
                        },
                    })
                );
            }

            setupScrollTrigger();

            function debounce(func, wait) {
                let timeout;
                return function(...args) {
                    const context = this;
                    clearTimeout(timeout);
                    timeout = setTimeout(() => func.apply(context, args), wait);
                };
            }

            const debouncedRefresh = debounce(() => {
                ScrollTrigger.refresh();
            }, 100);

            window.addEventListener('resize', () => {
                setupScrollTrigger();
                debouncedRefresh();
            });

            ScrollTrigger.refresh();

            const header = document.getElementById('header');
            const headElements = document.querySelectorAll('.history-item');
            const anchorSection = document.querySelector('.section.anchor-area');

            const observer = new MutationObserver(function(mutations) {
                mutations.forEach(function(mutation) {
                    if (mutation.attributeName === 'class') {
                        if (header.classList.contains('regular')) {
                            headElements.forEach(headElement => {
                                headElement.classList.add('menu-rising');
                                headElement.classList.remove('menu-dropping');
                            });
                            anchorSection.classList.remove('anchor-dropping');
                        } else {
                            headElements.forEach(headElement => {
                                headElement.classList.add('menu-dropping');
                                headElement.classList.remove('menu-rising');
                            });
                            anchorSection.classList.add('anchor-dropping');
                        }
                    }
                });
            });

            observer.observe(header, {
                attributes: true
            });

            new Swiper(".anchor-display", {
                slidesPerView: "auto",
                freeMode: true,
            });
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
    <div class="main company history" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Company</span></li>
                            <li class="data-item"><span class="item-text">History</span></li>

                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Milestones of Innovation at SK Networks</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">History</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/company/bg-local-head-history-pc.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">History</div>
                    <div class="content-body">
                        <div class="section anchor-area">
                            <div id="navbar-history" class="anchor-display swiper">
                                <ul class="nav anchor-list swiper-wrapper">
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea0">
                                            <span class="link-text date">2020 ~</span>
                                        </a>
                                    </li>
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea1">
                                            <span class="link-text date">2003 ~ 2019</span>
                                        </a>
                                    </li>
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea2">
                                            <span class="link-text date">1974 ~ 2002</span>
                                        </a>
                                    </li>
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea3">
                                            <span class="link-text date">1953 ~ 1973</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="section history-area">
                            <div data-bs-spy="scroll" data-bs-target="#navbar-history" data-bs-offset="0" class="navbar-scroll">
                                <div class="history-list">
                                    <!-- 현재 -->
                                    <div class="history-item anchor0" id="historyArea0">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">2020 ~</p>
                                                    <p class="name">Evolving into an AI-Centered Business Holding Company</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Established Glowide as a globally recognized top-tier chemical and materials trading company.</p>
                                                                    </div>
                                                                    <p class="data-date">2024.12</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2024-09.jpg" alt="Glowide Logo"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Launched SK SpeedMate, a leading comprehensive automobile management company.</p>
                                                                    </div>
                                                                    <p class="data-date">2024.9</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2024-12.jpg" alt="SpeedMate Logo"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Founded PhnyX Lab, an AI research lab</p>
                                                                    </div>
                                                                    <p class="data-date">2024.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2024-04.jpg" alt="Photo to celebrate the establishment of the PhnyX Lab"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Acquired en-core</p>
                                                                    </div>
                                                                    <p class="data-date">2023.10</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2023-10.jpg" alt="en-core Takeover Photo"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Walkerhill launched W.XYZ,</p>
                                                                        <p class="data-name">Korea’s first community-based NFT membership</p>
                                                                    </div>
                                                                    <p class="data-date">2023.7</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2023-07.jpg" alt="W.XYZ Logo"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Acquired SS Charger and launched SK Electlink</p>
                                                                    </div>
                                                                    <p class="data-date">2022/2023</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2022-2023.jpg" alt="SK Electlink Charging Station"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Walkerhill announced its vision for Eco-friendly hotels</p>
                                                                    </div>
                                                                    <p class="data-date">2021.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2021-04.jpg" alt="A photo of Walkerhill's eco-friendly hotel vision declaration ceremony"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Established US subsidiary SK Networks Americas LLC</p>
                                                                    </div>
                                                                    <p class="data-date">2020</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2020.jpg" alt="SK Networks Americas Logo"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //현재 -->
                                    <!-- 도약기 -->
                                    <div class="history-item anchor1" id="historyArea1">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">2003 ~ 2019</p>
                                                    <p class="name">Global Marketing Company 'SK Networks’</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Named Best ESG Company at the KCGS Excellence Awards</p>
                                                                    </div>
                                                                    <p class="data-date">2019.10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Launched Korea’s first AI-based used phone trading brand, MINTIT</p>
                                                                    </div>
                                                                    <p class="data-date">2019</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2019.jpg" alt="MINTIT image"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">AJ Rent-a-Car acquired and SK Rent-a-Car integrated (transferred in September 2024)</p>
                                                                    </div>
                                                                    <p class="data-date">2019/2020</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2009.jpg" alt="AJ Rent-A-Car, SK Rent-A-Car Logo Image"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Walkerhill launched Korea’s first capsule hotel Darakhyu</p>
                                                                    </div>
                                                                    <p class="data-date">2017.1</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2017-01.jpg" alt="Capsule Hotel DARAKHYU Signboard"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Dongyang Magic acquired and SK Magic launched</p>
                                                                    </div>
                                                                    <p class="data-date">2016/2017</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2016-2017.jpg" alt="SK Magic Launch Ceremony"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SpeedMate launched import car maintenance service</p>
                                                                    </div>
                                                                    <p class="data-date">2014</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Launched BeneCar, a long-term personal car rental service</p>
                                                                    </div>
                                                                    <p class="data-date">2010.5</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Walkerhill merged</p>
                                                                    </div>
                                                                    <p class="data-date">2009.9</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2009-09.jpg" alt="Walkerhill View"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">First corporate vehicle management service launched in Korea</p>
                                                                    </div>
                                                                    <p class="data-date">2009.3</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SK Networks launched</p>
                                                                    </div>
                                                                    <p class="data-date">2003.10</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2003-10.jpg" alt="Photos of SK Networks' launch"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //도약기 -->
                                    <!-- 성장기 -->
                                    <div class="history-item anchor2" id="historyArea2">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">1974 ~ 2002</p>
                                                    <p class="name">Inauguration of Sunkyong Co., Ltd. : Ushering in a New Era for General Trading Companies</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Thrunet dedicated line acquired (transferred in July 2009)</p>
                                                                    </div>
                                                                    <p class="data-date">2002.11</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SK Global launched (merging SK Distribution and SK Energy Sales)</p>
                                                                    </div>
                                                                    <p class="data-date">2000.7</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2000-07.jpg" alt="SK Global Advertising in the early 2000s"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SpeedMate acquired</p>
                                                                    </div>
                                                                    <p class="data-date">1999.2</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2000-05.jpg" alt="Customer in consultation with staff"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Renamed to SK Trading</p>
                                                                    </div>
                                                                    <p class="data-date">1998.1</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1998-01.jpg" alt="Company Name Change Ceremony"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">First Korean company to open a trade office in China</p>
                                                                    </div>
                                                                    <p class="data-date">1991.2</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1991-02.jpg" alt="Sun-Kyung's photo commemorating the opening of the first Beijing office for a Korean company"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Sunkyong Hall opened at the Korea World Trade Center</p>
                                                                    </div>
                                                                    <p class="data-date">1988.9</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Surpassed $1 Billion in exports (received $500 Million Export Tower Award in 1981)</p>
                                                                    </div>
                                                                    <p class="data-date">1986</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Korea Petroleum Corporation (Yukong) acquired</p>
                                                                    </div>
                                                                    <p class="data-date">1980.11</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1980-11.jpg" alt="Work site of Korea National Oil Corporation acquired"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">$200 Million Export Tower Award received on Export Day</p>
                                                                    </div>
                                                                    <p class="data-date">1977.12</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1977-12.jpg" alt="$200 million export tower award ceremony photo"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Sunkyong Co., Ltd. incorporated (went public in 1977) and designated as a general trading company</p>
                                                                    </div>
                                                                    <p class="data-date">1976</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1976.jpg" alt="exports carried out on a ship"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Korea Foundation for Advanced Studies established</p>
                                                                    </div>
                                                                    <p class="data-date">1974.11</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1974-11.jpg" alt="A photo commemorating the establishment of the Korea Higher Education Foundation"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Management principles announced (formalized as SKMS in 1979)</p>
                                                                    </div>
                                                                    <p class="data-date">1974.9</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1974-09.jpg" alt="SKMS First Edition Image"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //성장기 -->
                                    <!-- 태동기 -->
                                    <div class="history-item anchor3" id="historyArea3">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">1953 ~ 1973</p>
                                                    <p class="name">Creating Value from Scratch! The Birth of Sunkyong</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Chairman Choi Jong-hyun inaugurated</p>
                                                                    </div>
                                                                    <p class="data-date">1973.11</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1973-11.jpg" alt="Chairman Choi Jong-hyun's picture"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Student uniform brand ‘Smart’ launched (transferred in 2012)</p>
                                                                    </div>
                                                                    <p class="data-date">1970</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1970.jpg" alt="Image of promotional material for launching 'Smart' student clothing brand"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Awarded the Gold Tower Order of Industrial Service Merit, the first since the founding of the nation</p>
                                                                    </div>
                                                                    <p class="data-date">1963.8</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1963-08.jpg" alt="Photograph of the Gold Tower Order of Industrial Merit"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">First Rayon fabric of Korea exported</p>
                                                                    </div>
                                                                    <p class="data-date">1962.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1962-04.jpg" alt="Sun Kyung Textile Workers Producing Rayon Textiles"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Phoenix blanket fabric developed</p>
                                                                    </div>
                                                                    <p class="data-date">1958.5</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1958-05.jpg" alt="Imaging of a phoenix blanket"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Sunkyong Textiles received the Minister of Commerce Award for its artificial silk</p>
                                                                    </div>
                                                                    <p class="data-date">1955.12</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1955-12.jpg" alt="Image of the Minister of Science and Technology Award for the Artificial Dog Lining of Seongyeong Textiles"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Sunkyong Textiles founded by Chairman Choi Jong-kun</p>
                                                                    </div>
                                                                    <p class="data-date">1953.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1953-04.jpg" alt="an early linear textile office"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //태동기 -->
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