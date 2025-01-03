package com.skn.user.pr.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Press extends BaseDto {

    /**
     * Table: PRESS
     * Column: UID
     * */
    private String uid;

    /**
     * Table: PRESS
     * Column: PRESS_INDEX 프레스 센터 인덱스
     * */
    private String pressIndex;

    /**
     * Table: PRESS
     * Column: BUSINESS_AREA.BUSINESS_AREA_INDEX
     * */
    private String businessAreaIndex;

    /**
     * Table: PRESS
     * Column: BUSINESS_AREA.BUSINESS_AREA_INDEX
     * */
    private String isPress;

    /**
     * Table: PRESS
     * Column: BUSINESS_AREA.BUSINESS_AREA_INDEX
     * */
    private String isBusiness;

    /**
     * Table: PRESS
     * Column: LANG KO: 국문, EN: 영문
     * */
    private String lang;

    /**
     * Table: PRESS
     * Column: TITLE 제목
     * */
    private String title;

    /**
     * Table: PRESS
     * Column: CONTENT 내용
     * */
    private String content;

    /**
     * Table: PRESS
     * Column: 첨부파일
     * */
    private String addedFile;

    /**
     * Table: PRESS, BUSINESS_AREA
     * Column: 사업분야 한글명
     * */
    private String businessAreaNameKo;

    /**
     * Table: PRESS, BUSINESS_AREA
     * Column: 사업분야 영문명
     * */
    private String businessAreaNameEn;

    /**
     * Table: FILE
     * Column: 파일 대체 텍스트
     * */
    private String description;
}
