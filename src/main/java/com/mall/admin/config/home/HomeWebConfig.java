package com.mall.admin.config.home;
/**
 * 用来配置拦截器的配置类
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.mall.admin.constant.RuntimeConstant;
import com.mall.admin.interceptor.home.HomeGlobalInterceptor;
import com.mall.admin.interceptor.home.HomeLoginInterceptor;
@Configuration
public class HomeWebConfig implements WebMvcConfigurer {
	
	@Autowired
	private HomeLoginInterceptor homeLoginInterceptor;
	
	@Autowired
	private HomeGlobalInterceptor homeGlobalInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	    registry.addInterceptor(homeLoginInterceptor).addPathPatterns("/**").excludePathPatterns(RuntimeConstant.homeLoginExcludePathPatterns);
	    registry.addInterceptor(homeGlobalInterceptor).addPathPatterns("/**").excludePathPatterns(RuntimeConstant.homeGlobalExcludePathPatterns);
	}

}
