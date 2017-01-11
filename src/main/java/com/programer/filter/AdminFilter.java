package com.programer.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import com.programer.common.SystemHelper;

/**
 * 访问后台的filter
 */
public class AdminFilter implements Filter {
    // 后台登录页面
    private static final String ADMIN_LOGIN_URL = "/admin/login";
    // 没有权限页面
    private static final String NO_PERMISSION_URL = "/fore/noPermission";

    /**
     * 执行
     */
    @Override
    public void doFilter(final ServletRequest request, final ServletResponse response, final FilterChain chain) throws IOException, ServletException {
        if (SystemHelper.getCurrentUser() == null) {
            // 判断是否登录
            request.getRequestDispatcher(ADMIN_LOGIN_URL).forward(request, response);
        } else if (SystemHelper.getCurrentUser().getUserType() != 1) {
            // 判断是否为后台用户
            request.getRequestDispatcher(NO_PERMISSION_URL).forward(request, response);
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
