package com.wjm.softwareout.system.shiro.cache.impl;

import com.wjm.softwareout.system.shiro.cache.JedisManager;
import com.wjm.softwareout.system.shiro.cache.JedisShiroCache;
import com.wjm.softwareout.system.shiro.cache.ShiroCacheManager;
import org.apache.shiro.cache.Cache;

/**
 * @ClassName JedisShiroCacheManager
 * @Description TODO
 *
 * @Date 2019/07/27 23:53
 * @Version 1.0
 **/
public class JedisShiroCacheManager implements ShiroCacheManager {

    private JedisManager jedisManager;

    @Override
    public <K, V> Cache<K, V> getCache(String name) {
        return new JedisShiroCache<K, V>(name, getJedisManager());
    }

    @Override
    public void destroy() {
        //如果和其他系统，或者应用在一起就不能关闭
        //getJedisManager().getJedis().shutdown();
    }

    public JedisManager getJedisManager() {
        return jedisManager;
    }

    public void setJedisManager(JedisManager jedisManager) {
        this.jedisManager = jedisManager;
    }
}
