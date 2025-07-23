package com.skn.user.pr.service;

import com.skn.user.common.Page;
import com.skn.user.pr.dto.Press;
import com.skn.user.pr.dto.SocialMedia;
import com.skn.user.pr.mapper.PressMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.net.URL;
import java.util.*;

@Slf4j
@Service
@RequiredArgsConstructor
public class PressService {
    private final PressMapper pressMapper;
    /**
     * PR > 뉴스룸 보도자료 목록 조회
     * @param reqMap
     * @return
     */
    public List<Press> getPrPressList(Map<String, Object> reqMap, Page page) {
        // page.getCurrentPage() = 5
        if (page.getCurrentPage() > 1) {
            // offset = 25
            reqMap.put("offset", page.getCurrentPage() * 5);
        } else {
            // [안옴] offset = 40
            reqMap.put("offset", page.getOffset());
        }
        reqMap.put("size", page.getPageListSize());

        return pressMapper.selectPrPressList(reqMap);
    }

    public List<Press> getPrPressListForMultiSearch(Map<String, Object> reqMap, Page page) {
        // page.getCurrentPage() = 5
        if (page.getCurrentPage() > 1) {
            // offset = 25
            reqMap.put("offset", page.getCurrentPage() * 5);
        } else {
            // [안옴] offset = 40
            reqMap.put("offset", page.getOffset());
        }
        reqMap.put("size", page.getPageListSize());

        return pressMapper.selectPrPressListForMultiSearch(reqMap);
    }

    public List<Press> getPrPressList2(Map<String, Object> reqMap) {
        return pressMapper.selectPrPressList2(reqMap);
    }

    /**
     * PR > 뉴스룸 보도자료 목록 개수 조회
     * @param reqMap 페이징
     * @return
     */
    public int getPrPressListCount(Map<String, Object> reqMap) {
        return pressMapper.selectPrPressListCount(reqMap);
    }
    public int getPrPressListCount2(Map<String, Object> reqMap) {
        return pressMapper.selectPrPressListCount2(reqMap);
    }
    public int getPrPressListCountForMultiSearch(Map<String, Object> reqMap) {
        return pressMapper.selectPrPressListCountForMultiSearch(reqMap);
    }

    public void updateViewCount(String uid) {
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("uid", uid);
        pressMapper.updateViewCount(reqMap);
    }

    /**
     * PR > 뉴스룸 보도자료 상세 조회
     * @param reqMap UID
     * @return
     */
    public Press getPrPress(Map<String, Object> reqMap) {
        Press data = pressMapper.selectPrPress(reqMap);
        return data;
    }

    /**
     * PR > 뉴스룸 보도자료 이전글 제목, UID 조회
     * @param reqMap UID
     * @return
     */
    public Press getPreviousPrPress(Map<String, Object> reqMap) {
        Press data = pressMapper.selectPreviousPrPress(reqMap);
        return data;
    }

    /**
     * PR > 뉴스룸 보도자료 다음글 제목, UID 조회
     * @param reqMap UID
     * @return
     */
    public Press getNextPrPress(Map<String, Object> reqMap) {
        Press data = pressMapper.selectNextPrPress(reqMap);
        return data;
    }

    /**
     * BUSINESS > 사업별 보도자료 목록 조회
     * @param reqMap
     * @return
     */
    public List<Press> getBusinessPressList(Map<String, Object> reqMap) {
        return pressMapper.selectBusinessPressList(reqMap);
    }

    /**
     * PR > 소셜 미디어
     * @return
     */
    @Cacheable(value="BLOG_FEED_LIST")
    public List<SocialMedia> getBlogFeedList() {
        List<SocialMedia> socialMediaList = new ArrayList<>();
        try {
            RssReader reader = RssReader.getInstance();
            reader.setURL(new URL("https://blog.sknetworks.co.kr/feed"));
            socialMediaList = reader.getFeedList();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return socialMediaList;
    }
}

