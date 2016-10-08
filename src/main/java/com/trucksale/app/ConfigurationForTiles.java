package com.trucksale.app;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
public class ConfigurationForTiles {
	@Bean
	public TilesConfigurer tilesConfigurer(){
		final TilesConfigurer config = new TilesConfigurer();
		config.setDefinitions(new String[]{"WEB-INF/tiles/tiles.xml"});
		config.setCheckRefresh(true);
		return config;
	}
	
	@Bean
	public TilesViewResolver tilesViewResolver(){
		final TilesViewResolver viewResolver = new TilesViewResolver();
		viewResolver.setViewClass(TilesView.class);
		return viewResolver;
	}
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver result = new InternalResourceViewResolver();
		result.setPrefix("/WEB-INF/tiles");
		result.setSuffix(".jsp");
		return result;
	}
}
