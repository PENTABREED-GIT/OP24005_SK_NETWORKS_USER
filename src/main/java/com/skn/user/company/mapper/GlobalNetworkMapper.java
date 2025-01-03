package com.skn.user.company.mapper;

import com.skn.user.company.dto.GlobalNetwork;
import java.util.List;
import java.util.Map;

public interface GlobalNetworkMapper {
    /**
     * Global Network 목록 조회
     * @param reqMap 국내, 해외
     * @return
     */
    List<GlobalNetwork> selectGlobalNetworkList(Map reqMap);
}
