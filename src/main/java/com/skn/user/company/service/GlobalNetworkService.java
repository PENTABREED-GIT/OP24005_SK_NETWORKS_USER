package com.skn.user.company.service;

import com.skn.user.company.dto.GlobalNetwork;
import com.skn.user.company.mapper.GlobalNetworkMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.*;

@Slf4j
@Service
@RequiredArgsConstructor
public class GlobalNetworkService {

    private final GlobalNetworkMapper globalNetworkMapper;

    /**
     * Global Network 목록 조회
     * @param reqMap 국내, 해외
     * @return
     */
    public List<GlobalNetwork> getGlobalNetworkList(Map reqMap) {
        return globalNetworkMapper.selectGlobalNetworkList(reqMap);
    }

    /**
     * 지역을 중심으로 Global Network 목록을 그룹화하여 정렬된 순서로 반환하는 메서드.
     * @param domesticList 그룹화할 Global Network 객체 리스트
     * @param type 그룹화 방식 (DOMESTIC: 국내, 기타: 해외)
     * @return 지역별로 그룹화된 Global Network 객체들을 담은 Map
     */
    public Map<String, List<GlobalNetwork>> groupItemsByRegion(List<GlobalNetwork> domesticList, String type, String lang) {
        // 그룹화된 항목을 저장할 Map을 초기화
        Map<String, List<GlobalNetwork>> groupedItems = new HashMap<>();

        // 지역 순서를 정의할 리스트
        List<String> regionOrder;

        Map<String, List<GlobalNetwork>> sortedGroupedItems = new LinkedHashMap<>();

        if ("ko".equals(lang)) {
            // type에 따라 지역 순서를 설정 (DOMESTIC: 국내, 기타: 해외)
            if ("DOMESTIC".equals(type)) {
                regionOrder = Arrays.asList("서울특별시", "세종", "대전", "대구", "울산", "부산", "인천", "광주", "경기도", "충청북도", "충청남도", "경상북도", "경상남도", "전라북도", "전라남도", "강원도", "제주특별자치도");
            } else {
                regionOrder = Arrays.asList("아시아", "유럽", "남아메리카", "북아메리카", "오세아니아", "아프리카", "기타");
            }

            // 정렬된 결과를 담을 Map을 LinkedHashMap으로 초기화 (입력 순서 유지)

            // domesticList를 순회하며 지역별로 그룹화
            for (GlobalNetwork item : domesticList) {
                String regionName = item.getRegionNameKo();  // 아이템의 지역명을 가져옴

                // 그룹화된 항목이 없으면 새 리스트를 생성하고 추가
                if (!groupedItems.containsKey(regionName)) {
                    groupedItems.put(regionName, new ArrayList<>());
                }
                // 해당 지역명에 해당하는 리스트에 현재 아이템을 추가
                groupedItems.get(regionName).add(item);
            }

            // 정의된 지역 순서에 따라 그룹화된 항목을 정렬하여 새로운 Map에 삽입
            for (String region : regionOrder) {
                if (groupedItems.containsKey(region)) {
                    // 지역 순서에 있는 경우, sortedGroupedItems에 추가
                    sortedGroupedItems.put(region, groupedItems.get(region));
                }
            }
        } else {
            // type에 따라 지역 순서를 설정 (DOMESTIC: 국내, 기타: 해외)
            if ("DOMESTIC".equals(type)) {
                regionOrder = Arrays.asList("Seoul", "Sejong", "Daejeon", "Daegu", "Ulsan", "Busan", "Incheon", "Gwangju", "Gyeonggi-do", "Chungcheongbuk-do", "Chungcheongnam-do", "Gyeongsangbuk-do", "Gyeongsangnam-do", "Jeollabuk-do", "Jeollanam-do", "Gangwon-do", "Jeju-do");
            } else {
                regionOrder = Arrays.asList("Asia", "Europe", "South America", "North America", "Oceania", "Africa", "ETC.");
            }

            // 정렬된 결과를 담을 Map을 LinkedHashMap으로 초기화 (입력 순서 유지)

            // domesticList를 순회하며 지역별로 그룹화
            for (GlobalNetwork item : domesticList) {
                String regionName = item.getRegionNameEn();  // 아이템의 지역명을 가져옴

                // 그룹화된 항목이 없으면 새 리스트를 생성하고 추가
                if (!groupedItems.containsKey(regionName)) {
                    groupedItems.put(regionName, new ArrayList<>());
                }
                // 해당 지역명에 해당하는 리스트에 현재 아이템을 추가
                groupedItems.get(regionName).add(item);
            }

            // 정의된 지역 순서에 따라 그룹화된 항목을 정렬하여 새로운 Map에 삽입
            for (String region : regionOrder) {
                if (groupedItems.containsKey(region)) {
                    // 지역 순서에 있는 경우, sortedGroupedItems에 추가
                    sortedGroupedItems.put(region, groupedItems.get(region));
                }
            }

        }

        // 정렬된 지역 그룹화 결과 반환
        return sortedGroupedItems;
    }
}
