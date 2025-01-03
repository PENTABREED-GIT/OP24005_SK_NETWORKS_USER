package com.skn.user.common.interceptor;

import com.skn.user.util.RequestLogTable;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.net.InetAddress;

/**
 * Created by 박현진.
 * Date: 2023-02-16
 * Description: aop 사용 하여 객체 후처리용 인터셉터 (컨트롤러 레이어 단계에서 수행용도로 만듬)
 */
@Slf4j
public class CrudInterceptor implements MethodInterceptor {
    @Override
    public Object invoke(MethodInvocation invocation) throws Throwable {

//        Base base = null;
//        ServletRequestAttributes servletRequestAttributes = null;
//
//        try {
//            servletRequestAttributes = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
//        } catch (Exception e) {
//            return invocation.proceed();
//        }
//        HttpServletRequest httpServletRequest = servletRequestAttributes.getRequest();


//        String ipAddr = InetAddress.getLocalHost().getHostAddress().toString();

//        for (Object arg : invocation.getArguments()) {
//            if (arg instanceof Base) {
//                base = (Base) arg;
//                base.setRegIp(ipAddr);
//                base.setUpdIp(ipAddr);
//
//
//            }
//        }

//        RequestLogTable requestLogTable = new RequestLogTable(httpServletRequest);
//        requestLogTable.printLog();

        return invocation.proceed();
    }
}
