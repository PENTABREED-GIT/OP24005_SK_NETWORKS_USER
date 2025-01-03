package com.skn.user.pr.mapper;

import com.skn.user.pr.dto.Video;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface VideoMapper {
    /**
     * PR > 뉴스룸 영상 라이브러리 목록 조회
     * @param reqMap 페이징
     * @return
     */
    List<Video> selectVideoList(Map reqMap);

    /**
     * PR > 뉴스룸 영상 라이브러리 메인 영상 조회
     * @return
     */
    Video selectMainVideo(Map reqMap);
}
