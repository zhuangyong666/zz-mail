package com.mall.admin;

import static org.junit.Assert.assertTrue;

import com.mall.admin.util.StringUtil;
import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class AppTest 
{
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue()
    {
        System.out.println(StringUtil.authOrder("123456789012345678", "12345678901"));
    }
}
