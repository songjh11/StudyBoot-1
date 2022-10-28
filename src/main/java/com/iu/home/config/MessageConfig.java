package com.iu.home.config;

import java.util.Locale;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Configuration //xml파일의 역할
public class MessageConfig implements WebMvcConfigurer {

	//	***-context.xml
	//	<bean class="" id=""> == new 생성자()
	//	@Bean("my") //<bean class="" id=""> == new 생성자()
	//	public String getString() {
	//		return new String();
	//	}
	
	@Bean
	public LocaleResolver locale() {
//		1. session
		SessionLocaleResolver resolver = new SessionLocaleResolver();
		resolver.setDefaultLocale(Locale.KOREAN);
				
//		2. Cookie
		CookieLocaleResolver cResolver = new CookieLocaleResolver();
		cResolver.setCookieName("lang");
		cResolver.setDefaultLocale(Locale.KOREAN);
				
		return cResolver;
	}
	
	//Interceptor 객체 만들기
	@Bean
	public LocaleChangeInterceptor changeInterceptor () {
		LocaleChangeInterceptor changeInterceptor = new LocaleChangeInterceptor();
		changeInterceptor.setParamName("lang");
		//parameter를 받아서 언어 구분
		//url?lang=ko,en
		return changeInterceptor;
	}
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	
		
		
		
	}
	
}
