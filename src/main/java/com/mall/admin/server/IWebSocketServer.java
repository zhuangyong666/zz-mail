package com.mall.admin.server;

import javax.websocket.Session;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName IWebSocketServer.java
 * @Description TODO
 * @createTime 2022年05月30日 20:27:00
 */
public interface IWebSocketServer {
    /**
     * 连接建立成功调用
     *
     * @param session
     */
    void onOpen(Session session, String userId);

    /**
     * 收到客户端消息后调用
     *
     * @param message
     * @param session
     */
    void onMessage(String message, Session session);

    /**
     * 连接关闭调用
     */
    void onClose();

    /**
     * 发生错误/异常时调用
     *
     * @param session
     * @param error
     */
    void onError(Session session, Throwable error);

}
