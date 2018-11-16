package com.huruwo.demo.controller;

import com.blade.kit.EncryptKit;
import com.blade.mvc.annotation.JSON;
import com.blade.mvc.annotation.Param;
import com.blade.mvc.annotation.Path;
import com.blade.mvc.annotation.PostRoute;
import com.huruwo.demo.bean.Users;
import com.huruwo.demo.response.ARestResponse;

import java.util.Date;

/**
 * @author biezhi
 * @date 2017/9/28
 */
@Path(value = "user")
public class UserController {

    @PostRoute("register")
    @JSON
    public ARestResponse register(@Param String name, @Param String pass, @Param String email) {

        try {
            /**
             * 检测
             */
            long count = new Users().where("username", name).count();
            if (count > 0) {
                return ARestResponse.fail("用户名已存在");
            }
            Users temp = new Users();
            temp.setUsername(name);
            temp.setPassword(pass);
            temp.setEmail(email);
            Long timestamp = System.currentTimeMillis();
            //通过加密得到token 加点盐
            temp.setToken(EncryptKit.md5(name + pass + timestamp + "token123"));
            temp.setTimestamp(timestamp);
            temp.save();
            Users user = new Users().where("username", name).and("password", pass).find();
            return ARestResponse.ok(user);
        } catch (Exception e) {
            return ARestResponse.fail(e.getMessage());
        }

    }


    @PostRoute("login")
    @JSON
    public ARestResponse login(@Param String name, @Param String pass) {
        /**
         * 密码传输记得使用加密 md5/sha1
         */
        try {
            /**
             * 做查询验证
             */
            long count = new Users().where("username", name).count();
            if (count < 1) {
                return ARestResponse.fail("不存在该用户");
            }
            Users user = new Users().where("username", name).and("password", pass).find();
            if (null == user) {
                return ARestResponse.fail("用户名或密码错误");
            }
            Long timestamp = System.currentTimeMillis();
            //通过加密得到token 加点盐
            user.setToken(EncryptKit.md5(name + pass + timestamp + "token123"));
            user.setTimestamp(timestamp);
            /**
             * 写入时间
             */
            System.out.print(new Date(timestamp) + "\n");
            int m = user.update(user.getUid());
            if (m > 0) {
                /**
                 * 重新查询更新的值
                 */
                user = new Users().where("username", name).and("password", pass).find();
                return ARestResponse.ok(user);
            }

            return ARestResponse.fail("fail");


        } catch (Exception e) {
            return ARestResponse.fail(e.getMessage());
        }

    }

}
