package com.skn.user.business.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BusinessContents extends BaseDto {

    /**
     * Table: BUSINESS_CONTENTS
     * Column: BUSINESS_CONTENTS_INDEX 사업 콘텐츠 인덱스
     * */
    private String businessContentsIndex;

    /**
     * Table: BUSINESS_AREA
     * Column: BUSINESS_AREA_INDEX 사업 분야 인덱스
     * */
    private String businessAreaIndex;

    /**
     * Table: BUSINESS_CONTENTS
     * Column: TITLE 제목
     * */
    private String title;

    /**
     * Table: BUSINESS_CONTENTS
     * Column: IS_OPEN Y: 노출, N: 노출안함
     * */
    private String isOpen;

    /**
     * Table: BUSINESS_CONTENTS_DETAIL
     * Column: BUSINESS_CONTENTS_DETAIL_INDEX 사업 콘텐츠 상세 인덱스
     * */
    private String businessContentsDetailIndex;

    /**
     * Table: BUSINESS_CONTENTS_DETAIL
     * Column: CONTENT 내용
     * */
    private String content;

    /**
     * Table: BUSINESS_CONTENTS_DETAIL
     * Column: ADDITIONAL_CONTENT 부가 내용
     * */
    private String additionalContent;

    /**
     * Table: BUSINESS_AREA
     * Column: NAME_EN 사업 분야 영문명
     * */
    private String businessEnName;

    /**
     * Table: FILE
     * Column: 첨부파일
     * */
    private String addedFile;

    /**
     * Table: FILE
     * Column: 첨부파일 명
     * */
    private String fileName;

    /**
     * Table: FILE
     * Column: 파일 대체 텍스트
     * */
    private String description;
}
