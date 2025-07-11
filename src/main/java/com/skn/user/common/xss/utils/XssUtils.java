package com.skn.user.common.xss.utils;


import java.util.regex.Pattern;

public class XssUtils {

    // XSS 위험 키워드 목록
    private static final String[] XSS_KEYWORDS = {
            // 스크립트 관련
            "<script>", "javascript", "%3Cscript", "JaVaScRiPt", "ScRiPt%20%0a%0d", "ja%0Av%0Aa%0As%0Ac%0Aript",
            "script", "vbscript", "binding", "allowscriptaccess", "expression", "applet",

            // HTML 태그 관련
            "meta", "xml", "blink", "link", "style", "embed", "object", "iframe", "frame",
            "frameset", "background", "layer", "ilayer", "bgsound", "title", "base",

            // 위험한 함수/속성
            "eval", "innerHTML", "charset", "refresh", "string", "void", "create", "append",
            "%3Ealert", "alert", "msgbox", "document", "cookie", "href", "nabort", "@import", "+ADw",
            "+AD4", "aim:", "%0da=eval", "xmlns:html", "http-equiv=refresh", "httpequiv=\"refresh\"",
            "xmlns:html=", "<htmlxmln", "list-style-image", "x-scriptlet", "echo(", "0%0d%0a%00",
            "moz-binding", "res://", "#exec", "%u0", "&#x", "fromcharcode", "firefoxurl", "<br size=",
            "wvs-xss", "acunetix_wvs", "lowsrc", "dynsrc", "behavior", "activexobject", "microsoft.xmlhttp",
            "clsid:cafeefac-dec7-0000-0000abcdeffedcba", "application/npruntime-scriptable-plugin", "deploymenttoolkit",

            // 이벤트 핸들러들
            "onactivae", "onafterprint", "onafterupdate", "onbefore", "onbeforeactivate", "onbeforecopy",
            "onbeforecut", "onbeforedeactivate", "onbeforeeditfocus", "onbeforepaste", "onbeforeprint", "onbeforeunload",
            "onbeforeupdate", "onblur", "onbounce", "oncellchange", "onchange", "onclick", "oncontextmenu",
            "oncontrolselect", "oncopy", "oncut", "ondataavailable", "ondatasetchanged", "ondatasetcomplete",
            "ondblclick", "ondeactivate", "ondrag", "ondragend", "ondragenter", "ondragleave", "ondragover",
            "ondragstart", "ondrop", "onerror", "onerrorupdate", "onfilterchange", "onfinish", "onfocus",
            "onfocusin", "onfocusout", "onhelp", "onkeydown", "onkeypress", "onkeyup", "onlayoutcomplete",
            "onload", "onlosecapture"
    };

    public static String cleanXSS(String value) {
        if (value == null) return null;

        // 1. 먼저 URL 디코딩 처리 (인코딩된 공격 방지)
        value = urlDecode(value);

        // 2. 대소문자 무시하고 위험 키워드 제거
        for (String keyword : XSS_KEYWORDS) {
            value = value.replaceAll("(?i)" + Pattern.quote(keyword), "");
        }

        return value;

    }

    /**
     * URL 디코딩 처리 (재귀적으로 여러번 인코딩된 것도 처리)
     */
    public static String urlDecode(String value) {
        if (value == null) return null;

        try {
            String decoded = value;
            String previous;
            int attempts = 0;

            // 최대 5번까지 디코딩 시도 (무한루프 방지)
            do {
                previous = decoded;
                decoded = java.net.URLDecoder.decode(decoded, "UTF-8");
                attempts++;
            } while (!decoded.equals(previous) && attempts < 5);

            return decoded;
        } catch (Exception e) {
            // 디코딩 실패시 원본 반환
            return value;
        }
    }

}