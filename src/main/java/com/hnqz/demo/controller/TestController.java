package com.hnqz.demo.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
public class TestController {

        @RequestMapping("/")
        public String index(){
            for (int i = 0;i<100;i++) {
                String msg = i+"";

                Runnable runnable = dealMsg(msg);
                //将返回的runnable对象传入，并start()启动线程
                new Thread(runnable).start();
            }
            return "a";
        }

    public Runnable dealMsg(String msg){
        Runnable runnable = new Runnable() {
            @Override
            public void run() {

            }
        };

        return runnable;
    }

    @RequestMapping("/queryFrmuser")
    public String quertFrmuser(String account,String pwd){
        System.out.println(111);
           return "1";
    }
}
