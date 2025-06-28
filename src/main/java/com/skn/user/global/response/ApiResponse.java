package com.skn.user.global.response;

import lombok.Getter;

import java.util.HashMap;
import java.util.Map;

@Getter
public class ApiResponse<T> {

    // 성공 여부
    private boolean status = true;

    // 데이터
    private T data ;

    // 부가 데이터
    private Map<String, Object> metaData = new HashMap<>();

    public ApiResponse() {
    }

    public ApiResponse(T data) {
        this.data = data;
    }

    public ApiResponse(T data, Map<String, Object> metaData) {
        this.data = data;
        this.metaData = metaData;
    }

    // 정말 필요할떄만 쓴다 !!!!!!!!!!!
    public ApiResponse<T> changeStatus(boolean status) {
        this.status = status;
        return this;
    }


    public ApiResponse<T> changeMetaData(Map<String, Object> metaData) {
        this.metaData = metaData;
        return this;
    }


}
