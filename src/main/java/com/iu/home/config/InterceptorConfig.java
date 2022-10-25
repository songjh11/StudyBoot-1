package com.iu.home.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.iu.home.interceptors.StudyInterceptor;
import com.iu.home.interceptors.TestInterceptor;

import lombok.extern.slf4j.Slf4j;

@Configuration
@Slf4j 
public class InterceptorConfig implements WebMvcConfigurer {

	@Autowired //의존성 주입: inject, spring이 진행, IOC(Inversion Of Controll; 제어의 역전)
	private TestInterceptor testInterceptor;
	
	@Autowired 
	private StudyInterceptor studyInterceptor;
	
	@Override
		public void addInterceptors(InterceptorRegistry registry) {
			//method chaining: 메서드를 끊지 않고 연결하는 방식
			//적용할 Interceptor 등록
			registry.addInterceptor(testInterceptor)
					//Interseptor 적용할 URL 등록
					.addPathPatterns("/qna/**")
					.addPathPatterns("/notice/**")
					//제외할 URL 등록
					.excludePathPatterns("/qna/detail")
					.excludePathPatterns("/qna/add");
			
			registry.addInterceptor(studyInterceptor)
					.addPathPatterns("/qna/**");
		
			//WebMvcConfigurer.super.addInterceptors(registry);
		}
	
}
