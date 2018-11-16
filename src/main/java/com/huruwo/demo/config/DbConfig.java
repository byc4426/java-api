package com.huruwo.demo.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.blade.Blade;
import com.blade.event.BeanProcessor;
import com.blade.ioc.annotation.Bean;
import com.blade.jdbc.Base;
import com.blade.mvc.view.template.JetbrickTemplateEngine;
import com.huruwo.demo.util.LogUtils;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import io.github.biezhi.anima.Anima;
import org.reflections.Reflections;
import org.sql2o.Sql2o;

import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

@Bean
public class DbConfig implements BeanProcessor {
    @Override
    public void processor(Blade blade) {
//        String version = blade.env("app.version", "0.0.1");
//        // 配置数据库
//        DruidDataSource dataSource = new DruidDataSource();
//
//        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driverjdbc");
//        dataSource.setUrl("jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=Hongkong");
//        dataSource.setUsername("root");
//        dataSource.setPassword("123456");
//
//        dataSource.setInitialSize(5);
//        dataSource.setMaxActive(5);
//        dataSource.setMinIdle(2);
//        dataSource.setMaxWait(6000);
//        Anima.open(dataSource);
//        LogUtils.i("----------","---------------------");
//        // 配置模板引擎
//        JetbrickTemplateEngine templateEngine = new JetbrickTemplateEngine();
//        templateEngine.getGlobalContext().set("version", version);
//        blade.templateEngine(templateEngine);

//        Anima.open("jdbc:mysql://127.0.0.1:3306/demo", "root", "123456");


        /**
         * 数据库链接
         */
        HikariConfig config = new HikariConfig();
        config.setJdbcUrl("jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=GMT");
        config.setDriverClassName("com.mysql.cj.jdbc.Driver");
        config.setUsername("root");
        config.setPassword("123456");
        config.addDataSourceProperty("cachePrepStmts", "true");
        config.addDataSourceProperty("prepStmtCacheSize", "250");
        config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

        HikariDataSource ds = new HikariDataSource(config);

        Base.open(ds);
        log.print("success");

//        boolean devMode = true;
//        if (blade.environment().hasKey("app.dev")) {
//            devMode = blade.environment().getBoolean("app.dev", true);
//        }
//        if (blade.environment().hasKey("app.devMode")) {
//            devMode = blade.environment().getBoolean("app.devMode", true);
//        }
//
//        SqliteJdbc.importSql(devMode);
//
//        Sql2o sql2o = new Sql2o(SqliteJdbc.DB_SRC, null, null);
//        Base.open(sql2o);

    }
}
