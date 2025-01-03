package com.skn.user.pr.service;

import com.skn.user.common.Page;
import com.skn.user.pr.dto.Press;
import com.skn.user.pr.dto.SocialMedia;
import com.skn.user.pr.mapper.MediaMapper;
import com.skn.user.pr.mapper.PressMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class MediaService {
    private final MediaMapper mediaMapper;
    /**
     * PR > 뉴스룸 보도자료 목록 조회
     * @param reqMap
     * @return
     */
    public List<SocialMedia> getMediaList(Map<String, Object> reqMap) {
        return mediaMapper.selectMediaList(reqMap);
    }

}

