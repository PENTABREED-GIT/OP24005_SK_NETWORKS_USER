package com.skn.user.config.cache;

import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.concurrent.ConcurrentMapCacheManager;
import org.springframework.cache.jcache.JCacheCacheManager;
import org.springframework.cache.jcache.JCacheManagerFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;

@Configuration
@EnableCaching
public class CacheConfig {

    @Bean
    public JCacheManagerFactoryBean cacheManagerFactoryBean() throws IOException {
        JCacheManagerFactoryBean factoryBean = new JCacheManagerFactoryBean();
        factoryBean.setCacheManagerUri(new ClassPathResource("ehcache.xml").getURI());
        return factoryBean;
    }

    @Bean
    public CacheManager cacheManager() throws IOException {
        return new JCacheCacheManager(cacheManagerFactoryBean().getObject());
    }
}
