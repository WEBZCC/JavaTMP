package com.javatmp.demo.rest.openapi;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;

import java.util.Set;

import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@Slf4j
class DemoApplicationTests {

    @LocalServerPort
    private int port;

    @Autowired
    private RestAPIController restAPIController;

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    void contextLoads() {
        assertThat(restAPIController).isNotNull();
        log.debug("check runner : {} injected successfully", this.restAPIController.toString());

    }
    @Test
    void getAllTest()  throws Exception {
        assertThat(this.restTemplate.getForObject("http://localhost:" + port + "/rest/get",
                Set.class)).isNotEmpty();
    }

}
