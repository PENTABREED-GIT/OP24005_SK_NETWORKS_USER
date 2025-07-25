package com.skn.user.pr.mapper;

import com.skn.user.pr.dto.Press;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import java.util.Map;

@Mapper
public interface PressMapper {
    /**
     * PR > 뉴스룸 보도자료 목록 조회
     * @param reqMap 페이징
     * @return
     */
    List<Press> selectPrPressList(Map reqMap);
    List<Press> selectPrPressList2(Map reqMap);
    List<Press> selectPrPressListForMultiSearch(Map reqMap);

    /**
     * PR > 뉴스룸 보도자료 목록 개수 조회
     * @param reqMap 페이징
     * @return
     */
    int selectPrPressListCount(Map reqMap);
    int selectPrPressListCount2(Map reqMap);
    int selectPrPressListCountForMultiSearch(Map reqMap);

    /**
     * PR > 뉴스룸 보도자료 상세 조회
     * @param reqMap UID
     * @return
     */
    Press selectPrPress(Map reqMap);
    Press selectPrPressForMultiSearch(Map reqMap);
    /**
     * PR > 뉴스룸 보도자료 이전글 제목, UID 조회
     * @param reqMap UID
     * @return
     */
    Press selectPreviousPrPress(Map reqMap);
    Press selectPreviousPrPressForMultiSearch(Map reqMap);
    /**
     * PR > 뉴스룸 보도자료 다음글 제목, UID 조회
     * @param reqMap UID
     * @return
     */
    Press selectNextPrPress(Map reqMap);
    Press selectNextPrPressForMultiSearch(Map reqMap);
    /**
     * BUSINESS > 사업별 보도자료 목록 조회
     * @param reqMap 페이징
     * @return
     */
    List<Press> selectBusinessPressList(Map reqMap);

    void updateViewCount(Map<String, Object> reqMap);

}
