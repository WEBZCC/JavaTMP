package com.javatmp.config;

import com.javatmp.web.filter.AuthenticatorFilter;
import com.javatmp.web.filter.CacheControlHeadersFilter;
import com.javatmp.web.filter.ContentCacheFilter;
import com.javatmp.web.filter.GZIPCompressingFilter;
import com.javatmp.web.filter.LocalizationFilter;
import com.javatmp.web.filter.LoggingFilter;
import com.javatmp.web.filter.UTF8InforcerFilter;
import com.javatmp.web.listener.JavaTMPHttpSessionListener;
import com.javatmp.web.listener.JavaTMPServletListener;
import javax.persistence.EntityManagerFactory;
import javax.servlet.DispatcherType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Slf4j
@Configuration
public class Config implements WebMvcConfigurer {

    @Autowired
    EntityManagerFactory emf;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
//        registry.addInterceptor(new MinimalInterceptor());
    }

    @Bean
    public ServletListenerRegistrationBean<JavaTMPServletListener> getJavaTMPServletListener() {
        log.debug("EntityManagerFactory [" + emf + "]");
        ServletListenerRegistrationBean<JavaTMPServletListener> registrationBean
                = new ServletListenerRegistrationBean<>();
        registrationBean.setListener(new JavaTMPServletListener(this.emf));
        return registrationBean;
    }

    @Bean
    public ServletListenerRegistrationBean<JavaTMPHttpSessionListener> getJavaTMPHttpSessionListener() {
        log.debug("EntityManagerFactory [" + emf + "]");
        ServletListenerRegistrationBean<JavaTMPHttpSessionListener> registrationBean
                = new ServletListenerRegistrationBean<>();
        registrationBean.setListener(new JavaTMPHttpSessionListener());
        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean<UTF8InforcerFilter> getUTF8InforcerFilter() {
        FilterRegistrationBean<UTF8InforcerFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new UTF8InforcerFilter());
        registrationBean.addUrlPatterns("/*");
        registrationBean.setDispatcherTypes(DispatcherType.REQUEST);
        registrationBean.setOrder(1);
        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean<LoggingFilter> getLoggingFilter() {
        FilterRegistrationBean<LoggingFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new LoggingFilter());
        registrationBean.addUrlPatterns("/*");
        registrationBean.setDispatcherTypes(DispatcherType.REQUEST);
        registrationBean.addInitParameter("excludedUrlsRegex", "^/assets/.*,^/CaptchaImageController");
        registrationBean.setOrder(2);

        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean<LocalizationFilter> getLocalizationFilter() {
        FilterRegistrationBean<LocalizationFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new LocalizationFilter());
        registrationBean.addUrlPatterns("/*");
        registrationBean.setDispatcherTypes(DispatcherType.REQUEST);
        registrationBean.addInitParameter("excludedUrlsRegex", "^/assets/.*,^/CaptchaImageController");
        registrationBean.setOrder(3);
        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean<AuthenticatorFilter> getAuthenticatorFilter() {
        FilterRegistrationBean<AuthenticatorFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new AuthenticatorFilter());
        registrationBean.addUrlPatterns("/*");
        registrationBean.setDispatcherTypes(DispatcherType.REQUEST);
        registrationBean.addInitParameter("excludedUrlsRegex", "^/assets/.*,^/login,^/logout,^/register,^/CaptchaImageController");
        registrationBean.setOrder(4);
        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean<CacheControlHeadersFilter> getCacheControlHeadersFilter() {
        FilterRegistrationBean<CacheControlHeadersFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new CacheControlHeadersFilter());
        registrationBean.addUrlPatterns("/assets/*");
        registrationBean.setDispatcherTypes(DispatcherType.REQUEST);
        registrationBean.addInitParameter("excludedUrlsRegex", "^/,^/login,^/logout,^/register,^/CaptchaImageController");
        registrationBean.setOrder(5);
        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean<ContentCacheFilter> getContentCacheFilter() {
        FilterRegistrationBean<ContentCacheFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new ContentCacheFilter());
        registrationBean.addUrlPatterns("/assets/*");
        registrationBean.setDispatcherTypes(DispatcherType.REQUEST);
        registrationBean.setOrder(6);
        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean<GZIPCompressingFilter> getGZIPCompressingFilter() {
        FilterRegistrationBean<GZIPCompressingFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new GZIPCompressingFilter());
        registrationBean.addUrlPatterns("/*");
        registrationBean.setDispatcherTypes(DispatcherType.REQUEST);
        registrationBean.setOrder(7);
        return registrationBean;
    }

}