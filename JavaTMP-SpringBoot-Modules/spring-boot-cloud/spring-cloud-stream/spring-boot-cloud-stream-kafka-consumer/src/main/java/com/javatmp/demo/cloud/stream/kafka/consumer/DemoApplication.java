package com.javatmp.demo.cloud.stream.kafka;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.stream.annotation.EnableBinding;
import org.springframework.cloud.stream.annotation.StreamListener;
import org.springframework.cloud.stream.messaging.Sink;
import org.springframework.context.annotation.Bean;

/**
 * Spring Boot Main Runner Class
 */
@SpringBootApplication
@Slf4j
@RefreshScope
@EnableBinding(Sink.class)
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    @Value("${application.message}")
    String message;

    @StreamListener(Sink.INPUT)
    public void loggerSink(String message) {
        log.debug("Received a message event : [{}]",
                message);
    }

    @Bean
    public CommandLineRunner springBootMain() throws Exception {
        return args -> {
            log.info("*** Start Spring Boot Project ***");
            log.info("application message is : {}", message);
        };
    }

}
