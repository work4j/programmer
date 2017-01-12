package com.programer.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.programer.common.SystemHelper;
import com.programer.pojo.User;

/**
 * 访问后台的filter
 */
public class SecurityFilter implements Filter {
    // 后台登录页面
    private static final String ADMIN_LOGIN_URL = "/admin/login";
    // 没有权限页面
    private static final String NO_PERMISSION_URL = "/fore/noPermission";

    /**
     * 执行
     */
    @Override
    public void doFilter(final ServletRequest request, final ServletResponse response, final FilterChain chain) throws IOException, ServletException {
        User user = SystemHelper.getCurrentUser();
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        String url = httpRequest.getRequestURI();
        if (user == null) {
            // 判断获取的路径不为空且不是访问登录页面或执行登录操作时跳转
            if (url != null && !url.equals("") && url.contains(ADMIN_LOGIN_URL)) {
                chain.doFilter(request, response);
            } else {
                httpResponse.sendRedirect(httpRequest.getContextPath() + ADMIN_LOGIN_URL);
            }
        } else if (user.getUserType() != null && user.getUserType() != 1) {
            httpResponse.sendRedirect(httpRequest.getContextPath() + NO_PERMISSION_URL);
        } else {
            chain.doFilter(request, response);
        }
    }

    /**
     * 初始化
     */
    @Override
    public void init(final FilterConfig arg0) throws ServletException {

    }

    /**
     * 销毁
     */
    @Override
    public void destroy() {

    }
}
