package com.skn.user.main.service;

import com.skn.user.main.mapper.MainMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
@RequiredArgsConstructor
public class MainService {
    private final MainMapper mainMapper;

    public Map selectTestList() {
        return mainMapper.selectTestList();
    }
}
