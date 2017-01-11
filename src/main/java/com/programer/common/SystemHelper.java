package com.programer.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import com.programer.pojo.User;

public final class SystemHelper {
    private SystemHelper() {
        throw new Error("工具类不能实例化！");
    }

    /**
     * 得到当前用户
     */
    public static User getCurrentUser() {
        User user = (User) getSessionAttibute("currentUser");
        return user;
    }

    /**
     * 保存当前用户
     */
    public static void setCurrentUser(final User user) {
        setSessionAttibute("currentUser", user);
    }

    public static void logout() {
        HttpSession session = getSession();
        if (session != null) {
            session.invalidate();
        }
    }

    public static HttpServletRequest getRequest() {
        HttpServletRequest request = null;
        if (RequestContextHolder.getRequestAttributes() != null) {
            request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        }
        return request;
    }

    public static HttpSession getSession() {
        HttpSession session = null;
        HttpServletRequest request = getRequest();
        if (request != null) {
            session = request.getSession(true);
        }
        return session;
    }

    public static void setSessionAttibute(String key, Object value) {
        HttpSession session = getSession();
        if (session != null) {
            session.setAttribute(key, value);
        }
    }

    public static Object getSessionAttibute(String key) {
        Object resutlt = null;
        HttpSession session = getSession();
        if (session != null) {
            resutlt = session.getAttribute(key);
        }
        return resutlt;
    }

    public static String getCurrentSessionId() {
        String currentSessionId = "";
        HttpSession session = getSession();
        if (session != null) {
            currentSessionId = session.getId();
        }
        return currentSessionId;
    }
}