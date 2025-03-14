var t, e;
t = this, e = function () {
    function t(t, e, i) {
        return Math.max(t, Math.min(e, i))
    }

    class e {
        advance(e) {
            if (!this.isRunning) return;
            let i = !1;
            if (this.lerp) this.value = (s = this.value, o = this.to, n = 60 * this.lerp, r = e, function (t, e, i) {
                return (1 - i) * t + i * e
            }(s, o, 1 - Math.exp(-n * r))), Math.round(this.value) === this.to && (this.value = this.to, i = !0); else {
                this.currentTime += e;
                const s = t(0, this.currentTime / this.duration, 1);
                i = s >= 1;
                const o = i ? 1 : this.easing(s);
                this.value = this.from + (this.to - this.from) * o
            }
            var s, o, n, r;
            this.onUpdate?.(this.value, i), i && this.stop()
        }

        stop() {
            this.isRunning = !1
        }

        fromTo(t, e, {lerp: i = .1, duration: s = 1, easing: o = (t => t), onStart: n, onUpdate: r}) {
            this.from = this.value = t, this.to = e, this.lerp = i, this.duration = s, this.easing = o, this.currentTime = 0, this.isRunning = !0, n?.(), this.onUpdate = r
        }
    }

    class i {
        constructor({wrapper: t, content: e, autoResize: i = !0} = {}) {
            if (this.wrapper = t, this.content = e, i) {
                const t = function (t, e) {
                    let i;
                    return function () {
                        let e = arguments, s = this;
                        clearTimeout(i), i = setTimeout((function () {
                            t.apply(s, e)
                        }), 250)
                    }
                }(this.resize);
                this.wrapper !== window && (this.wrapperResizeObserver = new ResizeObserver(t), this.wrapperResizeObserver.observe(this.wrapper)), this.contentResizeObserver = new ResizeObserver(t), this.contentResizeObserver.observe(this.content)
            }
            this.resize()
        }

        destroy() {
            this.wrapperResizeObserver?.disconnect(), this.contentResizeObserver?.disconnect()
        }

        resize = () => {
            this.onWrapperResize(), this.onContentResize()
        };
        onWrapperResize = () => {
            this.wrapper === window ? (this.width = window.innerWidth, this.height = window.innerHeight) : (this.width = this.wrapper.clientWidth, this.height = this.wrapper.clientHeight)
        };
        onContentResize = () => {
            this.scrollHeight = this.content.scrollHeight, this.scrollWidth = this.content.scrollWidth
        };

        get limit() {
            return {x: this.scrollWidth - this.width, y: this.scrollHeight - this.height}
        }
    }

    class s {
        constructor() {
            this.events = {}
        }

        emit(t, ...e) {
            let i = this.events[t] || [];
            for (let t = 0, s = i.length; t < s; t++) i[t](...e)
        }

        on(t, e) {
            return this.events[t]?.push(e) || (this.events[t] = [e]), () => {
                this.events[t] = this.events[t]?.filter((t => e !== t))
            }
        }

        off(t, e) {
            this.events[t] = this.events[t]?.filter((t => e !== t))
        }

        destroy() {
            this.events = {}
        }
    }

    class o {
        constructor(t, {wheelMultiplier: e = 1, touchMultiplier: i = 2, normalizeWheel: o = !1}) {
            this.element = t, this.wheelMultiplier = e, this.touchMultiplier = i, this.normalizeWheel = o, this.touchStart = {
                x: null,
                y: null
            }, this.emitter = new s, this.element.addEventListener("wheel", this.onWheel, {passive: !1}), this.element.addEventListener("touchstart", this.onTouchStart, {passive: !1}), this.element.addEventListener("touchmove", this.onTouchMove, {passive: !1}), this.element.addEventListener("touchend", this.onTouchEnd, {passive: !1})
        }

        on(t, e) {
            return this.emitter.on(t, e)
        }

        destroy() {
            this.emitter.destroy(), this.element.removeEventListener("wheel", this.onWheel, {passive: !1}), this.element.removeEventListener("touchstart", this.onTouchStart, {passive: !1}), this.element.removeEventListener("touchmove", this.onTouchMove, {passive: !1}), this.element.removeEventListener("touchend", this.onTouchEnd, {passive: !1})
        }

        onTouchStart = t => {
            const {clientX: e, clientY: i} = t.targetTouches ? t.targetTouches[0] : t;
            this.touchStart.x = e, this.touchStart.y = i, this.lastDelta = {
                x: 0,
                y: 0
            }, this.emitter.emit("scroll", {deltaX: 0, deltaY: 0, event: t})
        };
        onTouchMove = t => {
            const {clientX: e, clientY: i} = t.targetTouches ? t.targetTouches[0] : t,
                s = -(e - this.touchStart.x) * this.touchMultiplier,
                o = -(i - this.touchStart.y) * this.touchMultiplier;
            this.touchStart.x = e, this.touchStart.y = i, this.lastDelta = {
                x: s,
                y: o
            }, this.emitter.emit("scroll", {deltaX: s, deltaY: o, event: t})
        };
        onTouchEnd = t => {
            this.emitter.emit("scroll", {deltaX: this.lastDelta.x, deltaY: this.lastDelta.y, event: t})
        };
        onWheel = e => {
            let {deltaX: i, deltaY: s} = e;
            this.normalizeWheel && (i = t(-100, i, 100), s = t(-100, s, 100)), i *= this.wheelMultiplier, s *= this.wheelMultiplier, this.emitter.emit("scroll", {
                deltaX: i,
                deltaY: s,
                event: e
            })
        }
    }

    return class {
        constructor({
                        wrapper: t = window,
                        content: n = document.documentElement,
                        wheelEventsTarget: r = t,
                        eventsTarget: l = r,
                        smoothWheel: h = !0,
                        smoothTouch: a = !1,
                        syncTouch: c = !1,
                        syncTouchLerp: p = .075,
                        touchInertiaMultiplier: u = 35,
                        duration: d,
                        easing: m = (t => Math.min(1, 1.001 - Math.pow(2, -10 * t))),
                        lerp: g = !d && .1,
                        infinite: v = !1,
                        orientation: S = "vertical",
                        gestureOrientation: f = "vertical",
                        touchMultiplier: w = 1,
                        wheelMultiplier: y = 1,
                        normalizeWheel: T = !1,
                        autoResize: z = !0
                    } = {}) {
            window.lenisVersion = "1.0.32", t !== document.documentElement && t !== document.body || (t = window), this.options = {
                wrapper: t,
                content: n,
                wheelEventsTarget: r,
                eventsTarget: l,
                smoothWheel: h,
                smoothTouch: a,
                syncTouch: c,
                syncTouchLerp: p,
                touchInertiaMultiplier: u,
                duration: d,
                easing: m,
                lerp: g,
                infinite: v,
                gestureOrientation: f,
                orientation: S,
                touchMultiplier: w,
                wheelMultiplier: y,
                normalizeWheel: T,
                autoResize: z
            }, this.animate = new e, this.emitter = new s, this.dimensions = new i({
                wrapper: t,
                content: n,
                autoResize: z
            }), this.toggleClass("lenis", !0), this.velocity = 0, this.isLocked = !1, this.isStopped = !1, this.isSmooth = c || h || a, this.isScrolling = !1, this.targetScroll = this.animatedScroll = this.actualScroll, this.options.wrapper.addEventListener("scroll", this.onNativeScroll, {passive: !1}), this.virtualScroll = new o(l, {
                touchMultiplier: w,
                wheelMultiplier: y,
                normalizeWheel: T
            }), this.virtualScroll.on("scroll", this.onVirtualScroll)
        }

        destroy() {
            this.emitter.destroy(), this.options.wrapper.removeEventListener("scroll", this.onNativeScroll, {passive: !1}), this.virtualScroll.destroy(), this.dimensions.destroy(), this.toggleClass("lenis", !1), this.toggleClass("lenis-smooth", !1), this.toggleClass("lenis-scrolling", !1), this.toggleClass("lenis-stopped", !1), this.toggleClass("lenis-locked", !1)
        }

        on(t, e) {
            return this.emitter.on(t, e)
        }

        off(t, e) {
            return this.emitter.off(t, e)
        }

        setScroll(t) {
            this.isHorizontal ? this.rootElement.scrollLeft = t : this.rootElement.scrollTop = t
        }

        onVirtualScroll = ({deltaX: t, deltaY: e, event: i}) => {
            if (i.ctrlKey) return;
            const s = i.type.includes("touch"), o = i.type.includes("wheel");
            if ((this.options.smoothTouch || this.options.syncTouch) && s && "touchstart" === i.type) return void this.reset();
            const n = 0 === t && 0 === e,
                r = "vertical" === this.options.gestureOrientation && 0 === e || "horizontal" === this.options.gestureOrientation && 0 === t;
            if (n || r) return;
            let l = i.composedPath();
            if (l = l.slice(0, l.indexOf(this.rootElement)), l.find((t => t.hasAttribute?.("data-lenis-prevent") || s && t.hasAttribute?.("data-lenis-prevent-touch") || o && t.hasAttribute?.("data-lenis-prevent-wheel") || t.classList?.contains("lenis")))) return;
            if (this.isStopped || this.isLocked) return void i.preventDefault();
            if (this.isSmooth = (this.options.smoothTouch || this.options.syncTouch) && s || this.options.smoothWheel && o, !this.isSmooth) return this.isScrolling = !1, void this.animate.stop();
            i.preventDefault();
            let h = e;
            "both" === this.options.gestureOrientation ? h = Math.abs(e) > Math.abs(t) ? e : t : "horizontal" === this.options.gestureOrientation && (h = t);
            const a = s && this.options.syncTouch, c = s && "touchend" === i.type && Math.abs(h) > 5;
            c && (h = this.velocity * this.options.touchInertiaMultiplier), this.scrollTo(this.targetScroll + h, {
                programmatic: !1, ...a ? {lerp: c ? this.options.syncTouchLerp : 1} : {
                    lerp: this.options.lerp,
                    duration: this.options.duration,
                    easing: this.options.easing
                }
            })
        };

        resize() {
            this.dimensions.resize()
        }

        emit() {
            this.emitter.emit("scroll", this)
        }

        onNativeScroll = () => {
            if (!this.__preventNextScrollEvent && !this.isScrolling) {
                const t = this.animatedScroll;
                this.animatedScroll = this.targetScroll = this.actualScroll, this.velocity = 0, this.direction = Math.sign(this.animatedScroll - t), this.emit()
            }
        };

        reset() {
            this.isLocked = !1, this.isScrolling = !1, this.animatedScroll = this.targetScroll = this.actualScroll, this.velocity = 0, this.animate.stop()
        }

        start() {
            this.isStopped = !1, this.reset()
        }

        stop() {
            this.isStopped = !0, this.animate.stop(), this.reset()
        }

        raf(t) {
            const e = t - (this.time || t);
            this.time = t, this.animate.advance(.001 * e)
        }

        scrollTo(e, {
            offset: i = 0,
            immediate: s = !1,
            lock: o = !1,
            duration: n = this.options.duration,
            easing: r = this.options.easing,
            lerp: l = !n && this.options.lerp,
            onComplete: h = null,
            force: a = !1,
            programmatic: c = !0
        } = {}) {
            if (!this.isStopped && !this.isLocked || a) {
                if (["top", "left", "start"].includes(e)) e = 0; else if (["bottom", "right", "end"].includes(e)) e = this.limit; else {
                    let t;
                    if ("string" == typeof e ? t = document.querySelector(e) : e?.nodeType && (t = e), t) {
                        if (this.options.wrapper !== window) {
                            const t = this.options.wrapper.getBoundingClientRect();
                            i -= this.isHorizontal ? t.left : t.top
                        }
                        const s = t.getBoundingClientRect();
                        e = (this.isHorizontal ? s.left : s.top) + this.animatedScroll
                    }
                }
                if ("number" == typeof e) {
                    if (e += i, e = Math.round(e), this.options.infinite ? c && (this.targetScroll = this.animatedScroll = this.scroll) : e = t(0, e, this.limit), s) return this.animatedScroll = this.targetScroll = e, this.setScroll(this.scroll), this.reset(), void h?.(this);
                    if (!c) {
                        if (e === this.targetScroll) return;
                        this.targetScroll = e
                    }
                    this.animate.fromTo(this.animatedScroll, e, {
                        duration: n, easing: r, lerp: l, onStart: () => {
                            o && (this.isLocked = !0), this.isScrolling = !0
                        }, onUpdate: (t, e) => {
                            this.isScrolling = !0, this.velocity = t - this.animatedScroll, this.direction = Math.sign(this.velocity), this.animatedScroll = t, this.setScroll(this.scroll), c && (this.targetScroll = t), e || this.emit(), e && (this.reset(), this.emit(), h?.(this), this.__preventNextScrollEvent = !0, requestAnimationFrame((() => {
                                delete this.__preventNextScrollEvent
                            })))
                        }
                    })
                }
            }
        }

        get rootElement() {
            return this.options.wrapper === window ? document.documentElement : this.options.wrapper
        }

        get limit() {
            return this.dimensions.limit[this.isHorizontal ? "x" : "y"]
        }

        get isHorizontal() {
            return "horizontal" === this.options.orientation
        }

        get actualScroll() {
            return this.isHorizontal ? this.rootElement.scrollLeft : this.rootElement.scrollTop
        }

        get scroll() {
            return this.options.infinite ? (this.animatedScroll % (t = this.limit) + t) % t : this.animatedScroll;
            var t
        }

        get progress() {
            return 0 === this.limit ? 1 : this.scroll / this.limit
        }

        get isSmooth() {
            return this.__isSmooth
        }

        set isSmooth(t) {
            this.__isSmooth !== t && (this.__isSmooth = t, this.toggleClass("lenis-smooth", t))
        }

        get isScrolling() {
            return this.__isScrolling
        }

        set isScrolling(t) {
            this.__isScrolling !== t && (this.__isScrolling = t, this.toggleClass("lenis-scrolling", t))
        }

        get isStopped() {
            return this.__isStopped
        }

        set isStopped(t) {
            this.__isStopped !== t && (this.__isStopped = t, this.toggleClass("lenis-stopped", t))
        }

        get isLocked() {
            return this.__isLocked
        }

        set isLocked(t) {
            this.__isLocked !== t && (this.__isLocked = t, this.toggleClass("lenis-locked", t))
        }

        get className() {
            let t = "lenis";
            return this.isStopped && (t += " lenis-stopped"), this.isLocked && (t += " lenis-locked"), this.isScrolling && (t += " lenis-scrolling"), this.isSmooth && (t += " lenis-smooth"), t
        }

        toggleClass(t, e) {
            this.rootElement.classList.toggle(t, e), this.emitter.emit("className change", this)
        }
    }
}, "object" == typeof exports && "undefined" != typeof module ? module.exports = e() : "function" == typeof define && define.amd ? define(e) : (t = "undefined" != typeof globalThis ? globalThis : t || self).Lenis = e();