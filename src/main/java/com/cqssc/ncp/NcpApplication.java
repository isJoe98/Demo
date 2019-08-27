package com.cqssc.ncp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class NcpApplication {

    public static void main(String[] args) {
        SpringApplication.run(NcpApplication.class, args);
    }

}
