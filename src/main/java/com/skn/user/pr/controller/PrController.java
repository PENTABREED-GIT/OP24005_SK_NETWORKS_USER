package com.skn.user.pr.controller;

import com.skn.user.common.Page;
import com.skn.user.common.xss.utils.XssUtils;
import com.skn.user.global.response.ApiResponse;
import com.skn.user.pr.dto.Press;
import com.skn.user.pr.service.MediaService;
import com.skn.user.pr.service.PressService;
import com.skn.user.pr.service.VideoService;
import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class PrController {
    private final PressService pressService;
    private final MediaService mediaService;
    private final VideoService videoService;

    @RequestMapping(value={"/{lang:ko|en}/pr/news-room" ,"/pr/news-room"})
    public String newsRoom(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("mainBanner", "Y");
        reqMap.put("mainVideo", "Y");
        int totalCount = pressService.getPrPressListCount(reqMap);
        int currentPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));
        Page page = new Page(5, currentPage, 10, totalCount);

        List<Press> pressList = pressService.getPrPressList(reqMap, page);

        model.addAttribute("pressList", pressList);
        model.addAttribute("videoList", videoService.getVideoList(reqMap));
        model.addAttribute("mainVideo", videoService.getMainVideo(reqMap));
//        model.addAttribute("socialList", pressService.getBlogFeedList());
        model.addAttribute("mediaList", mediaService.getMediaList(reqMap));
        model.addAttribute("totalCount", totalCount);

        return lang + "/pr/main";
    }

    /**
     * PR > 뉴스룸 목록 조회용 include 뷰
     * <pre>
     * - 언어, 자료 구분에 따라 조회
     * </pre>
     * @param lang
     * @param reqMap
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/pr/news-room-inc" ,"/pr/news-room-inc"})
    public String newsRoomInclude(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        int totalCount = pressService.getPrPressListCount(reqMap);

        // currentPage = 5
        int currentPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));

        // pageListSize = 10 , 조회 시 가져올 갯수
        int pageListSize = Integer.parseInt(NTUtil.isNull(reqMap.get("pageListSize"), "10"));

        if (currentPage > 1) {
            pageListSize = 5;
        }

        // this.offset = 40
        Page page = new Page(5, currentPage, pageListSize, totalCount);
        System.out.println("page = " + page);

        List<Press> pressList = pressService.getPrPressList(reqMap, page);

        model.addAttribute("pressList", pressList);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("page", page);
        model.addAttribute("pageListSize", 10);
        model.addAttribute("search", reqMap);

        if (currentPage == 1 && pressList.isEmpty()) {
            return lang + "/pr/main-press-no-result-inc"; // 검색 결과 없음에 대한 별도의 JSP 반환
        }

        return lang + "/pr/main-press-inc";
    }

    /**
     * [성준]
     * PR > 뉴스룸 목록 조회용 include 뷰
     * <pre>
     * - 언어, 자료 구분에 따라 조회
     * </pre>
     * @param lang
     * @param reqMap
     * @return
     */
    @ResponseBody
    @RequestMapping(value={"/{lang:ko|en}/pr/news-room-inc2" ,"/pr/news-room-inc2"})
    public ApiResponse<?> newsRoomInclude2(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        int totalCount = pressService.getPrPressListCount2(reqMap);

        int clickPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));

        int limit = Integer.parseInt(NTUtil.isNull(reqMap.get("pageListSize"), "10"));
        limit = clickPage == 1 ? 10 : 5;


        // Page 클래스 아예 사용하지 않음
        // this.offset = 40
//        Page page = new Page(5, currentPage, pageListSize, totalCount);
//        System.out.println("page = " + page);

        //* reqMpa 에서의 offset , limit 넣어주기

        // page.getCurrentPage() = 5
//        if (page.getCurrentPage() > 1) {
//            // offset = 25
//            reqMap.put("offset", page.getCurrentPage() * 5);
//        } else {
//            // [안옴] offset = 40
//            reqMap.put("offset", page.getOffset());
//        }


//        int offset = clickPage == 1 ? 0 : (clickPage - 1) * limit;

        int offset = clickPage == 1 ? 0 : (clickPage) * limit;
        reqMap.put("offset", offset);
        reqMap.put("limit", limit);

        List<Press> pressList = pressService.getPrPressList2(reqMap);
        for (Press press : pressList) {
            /*
            String newTitle = NTUtil.removeHtml(press.getTitle());
            String newContent = NTUtil.removeHtml(press.getContent());
            String newBusinessAreaNameKo = NTUtil.removeHtml(press.getBusinessAreaNameKo());
            String newBusinessAreaNameEn = NTUtil.removeHtml(press.getBusinessAreaNameEn());
            */
            String newTitle = XssUtils.cleanXSS(press.getTitle());
            String newContent = XssUtils.cleanXSS(press.getContent());
            String newBusinessAreaNameKo = XssUtils.cleanXSS(press.getBusinessAreaNameKo());
            String newBusinessAreaNameEn = XssUtils.cleanXSS(press.getBusinessAreaNameEn());
            String newDescription = XssUtils.cleanXSS(press.getDescription());
            press.setTitle(newTitle);
            press.setContent(newContent);
            press.setBusinessAreaNameKo(newBusinessAreaNameKo);
            press.setBusinessAreaNameEn(newBusinessAreaNameEn);
            press.setDescription(newDescription);
        }

//        model.addAttribute("pressList", pressList);
//        model.addAttribute("totalCount", totalCount);
//        model.addAttribute("page", page);
//        model.addAttribute("pageListSize", 10);
//        model.addAttribute("search", reqMap);

//
//        if (currentPage == 1 && pressList.isEmpty()) {
//            return lang + "/pr/main-press-no-result-inc"; // 검색 결과 없음에 대한 별도의 JSP 반환
//        }
//
//        return lang + "/pr/main-press-inc";


        Map<String, Object> metaData = new HashMap<>();
        metaData.put("totalCount", totalCount);
        metaData.put("reqMap", reqMap);
        metaData.put("limit", limit);

        return new ApiResponse<>(pressList, metaData);
    }


    @RequestMapping(value={"/{lang:ko|en}/pr/news-room/{uid}" ,"/pr/news-room/{uid}"})
    public String newsRoomview(@PathVariable(required = false) String lang, HttpServletRequest request, Model model, @PathVariable String uid) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("uid", uid);
        reqMap.put("searchWord", request.getParameter("searchWord"));

        pressService.updateViewCount(uid);

        model.addAttribute("prPress", pressService.getPrPress(reqMap));
        model.addAttribute("previousPrPress", pressService.getPreviousPrPress(reqMap));
        model.addAttribute("nextPrPress", pressService.getNextPrPress(reqMap));

        return lang + "/pr/main-view";
    }

    @RequestMapping(value={"/{lang:ko|en}/pr/brand" ,"/pr/brand"})
    public String brand(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/pr/brand";
    }
}
