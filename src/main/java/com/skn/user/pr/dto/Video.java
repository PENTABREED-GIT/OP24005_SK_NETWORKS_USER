package com.skn.user.pr.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Video extends BaseDto {

    /**
     * Table: VIDEO
     * Column: UID
     * */
    private String uid;

    /**
     * Table: VIDEO
     * Column: VIDEO_INDEX 영상 라이브러리 인덱스
     * */
    private String videoIndex;

    /**
     * Table: VIDEO
     * Column: BRAND 브랜드
     * */
    private String brand;

    /**
     * Table: VIDEO
     * Column: LANG KO: 국문, EN: 영문
     * */
    private String lang;

    /**
     * Table: VIDEO
     * Column: TITLE 제목
     * */
    private String title;

    /**
     * Table: VIDEO
     * Column: VIDEO_SCRIPT 제목
     * */
    private String videoScript;

    /**
     * Table: VIDEO
     * Column: VIDEO_URL 동영상 URL
     * */
    private String videoUrl;

    /**
     * Table: VIDEO, FILE
     * Column: 동영상 썸네일 경로
     * */
    private String thumbnailUrl;

    /**
     * Table: VIDEO, FILE
     * Column: 동영상 썸네일 설명
     * */
    private String description;

    /**
     * embed용 UID
     * */
    private String youtubeUid;

    /**
     * Table: VIDEO
     * Column: REG_DATE 등록일시
     * */
    private String regDate;
}
