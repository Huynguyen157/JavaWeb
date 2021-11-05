package com.devpro.shop13.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
public class MVCConf implements WebMvcConfigurer {
	//cấu hình vị trí chứa folder chứa view
	public static String ROOT_UPLOAD_PATH="F:/NguyenQuangHuy-PRJ-Lan 1/com.devpro.shop13/upload/";
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		return bean;
	}
	/**
	 * Hàm này sẽ báo cho module web biết nơi để View(Jsp) biết load static resources(css, js)
	 * classpath: <-> src/main/resources
	 */
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/META-INF/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/META-INF/js/");
		registry.addResourceHandler("/img/**").addResourceLocations("classpath:/META-INF/img/");
		registry.addResourceHandler("/scss/**").addResourceLocations("classpath:/META-INF/scss/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("classpath:/META-INF/fonts/");
		registry.addResourceHandler("/assets/**").addResourceLocations("classpath:/META-INF/assets/");
		registry.addResourceHandler("/dist/**").addResourceLocations("classpath:/META-INF/dist/");
		// cau hinh folder tren server chua cac file ng dung upload
		registry.addResourceHandler("/upload/**").addResourceLocations("file:"+ROOT_UPLOAD_PATH);
	}
    }
