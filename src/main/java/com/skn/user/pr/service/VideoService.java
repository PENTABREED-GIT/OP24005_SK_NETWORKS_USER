package com.skn.user.pr.service;

import com.skn.user.pr.dto.Video;
import com.skn.user.pr.mapper.VideoMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class VideoService {
    private final VideoMapper videoMapper;
    /**
     * PR > 뉴스룸 영상 라이브러리 목록 조회
     * @param reqMap 페이징
     * @return
     */
    public List<Video> getVideoList(Map<String, Object> reqMap) {
        return videoMapper.selectVideoList(reqMap);
    }

    /**
     * PR > 뉴스룸 영상 라이브러리 메인 영상 조회
     * @return
     */
    public Video getMainVideo(Map<String, Object> reqMap) {
        return videoMapper.selectMainVideo(reqMap);
    }
}

