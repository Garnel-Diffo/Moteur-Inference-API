package com.systemformel.moteurinferenceapi.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {

    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("Moteur d'inférence et API d'intégration")
                        .version("1.0")
                        .description("API pour le moteur d'inférence et l'intégration avec Prolog"));
    }
}
