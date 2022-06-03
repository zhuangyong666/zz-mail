package com.mall.admin.constant;

import java.util.Arrays;
import java.util.List;

/**
 * 系统运行时的常量
 *
 * @author Administrator
 */
public class RuntimeConstant {

    //后台登录拦截器无需拦截的url
    public static List<String> loginExcludePathPatterns = Arrays.asList(
            "/system/login",
            "/system/auth_order",
            "/admin/css/**",
            "/admin/fonts/**",
            "/admin/js/**",
            "/admin/images/**",
            "/error",
            "/photo/view",
            "/cpacha/generate_cpacha",
            "/home/**",
            "/index/**",
            "/recovery/**",
            "/favicon.ico",
            "/admin/device/update"
    );
    //后台权限拦截器无需拦截的url
    public static List<String> authorityExcludePathPatterns = Arrays.asList(
            "/system/login",
            "/system/auth_order",
            "/system/index",
            "/system/no_right",
            "/admin/css/**",
            "/admin/fonts/**",
            "/admin/js/**",
            "/admin/images/**",
            "/error",
            "/cpacha/generate_cpacha",
            "/system/logout",
            "/system/update_userinfo",
            "/system/update_pwd",
            "/photo/view",
            "/home/**",
            "/index/**",
            "/recovery/**",
            "/favicon.ico",
            "/admin/device/update"
    );
    //前台全局拦截器无需拦截的url
    public static List<String> homeGlobalExcludePathPatterns = Arrays.asList(
            "/system/**",
            "/admin/**",
            "/error",
            "/cpacha/generate_cpacha",
            "/photo/view",
            "/recovery/**",
            "/index/**",
            "/favicon.ico"
    );
    //前台登录拦截器无需拦截的url
    public static List<String> homeLoginExcludePathPatterns = Arrays.asList(
            "/system/**",
            "/admin/**",
            "/error",
            "/cpacha/generate_cpacha",
            "/photo/view",
            "/home/index/**",
            "/home/goods/**",
            "/home/wanted_goods/**",
            "/home/js/**",
            "/home/css/**",
            "/home/imgs/**",
            "/recovery/**",
            "/index/**",
            "/favicon.ico"
    );
}
