package com.mall.admin.server.impl;

import org.springframework.stereotype.Component;

import javax.websocket.server.ServerEndpoint;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName WebSocketServer.java
 * @Description TODO
 * @createTime 2022年05月30日 21:05:00
 */
@ServerEndpoint("/websocket/{userId}")
@Component
public class WebSocketServer extends WebSocketServerSupport{
}
