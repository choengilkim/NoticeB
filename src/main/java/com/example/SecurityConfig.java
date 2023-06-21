package com.example;

import java.io.IOException;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.RequestMatcher;

import jakarta.annotation.security.PermitAll;
import jakarta.servlet.DispatcherType;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Configuration //Configuration = spring이 new해줄수있게해주고 펙토리에보관해줌
public class SecurityConfig {
	
	public SecurityConfig() {
		System.out.println("SecurityConfig()...");
		
		"Hello".toUpperCase()   //메소드체인방식
			   .toLowerCase()
			   .stripIndent()
			   .toString();
			
	}
	
	@Bean //메소드에 붙으면 무조건수행
	public SecurityFilterChain filterchain(HttpSecurity http) throws Exception {
		http.csrf().disable()  //disable 처리해야 홈페이지에서 처리안함
			.cors().disable();
		
		http.authorizeHttpRequests()	//httpRequests에 대해 권한설정하는거
			.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll() //forward에 대해서 허용해주겠다
			.requestMatchers("/webjars/**").permitAll()       //인증이없어도 보여지는페이지 **두개는 후손까지허용
			.requestMatchers("/img/**").permitAll()   		 //인증이없어도 보이는 이미지  *자식만 허용
			.requestMatchers("/admin/**").hasAnyRole("ADMIN")  //admin이여야 허용
			.requestMatchers("/security").permitAll()
			.requestMatchers("//**").permitAll()
			.anyRequest().authenticated(); //그외에는 인증해야함
		
		http.formLogin() // 폼로그인방식으로하겠다
			.loginPage("/login") //로그인페이지로 이동
			.successHandler((request, response, auth) -> {
				response.sendRedirect("/"); //redirect 기능
			})
			.failureHandler((request, response, e) -> { //forward(백앤드) 기능
				request.setAttribute("exception", e);
				request.getRequestDispatcher("/loginFail").forward(request, response);
			})
			.permitAll();
			
		http.logout() //로그아웃했을때 홈으로 이동
		.logoutSuccessUrl("/");
		
		return http.build();
	}
	
}



