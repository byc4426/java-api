package com.huruwo.demo.controller;

import com.blade.jdbc.core.Fields;
import com.blade.mvc.annotation.*;
import com.huruwo.demo.bean.Notes;
import com.huruwo.demo.response.ARestResponse;

import java.util.List;

@Path(value = "note")
public class NoteController {

    @GetRoute("list")
    @JSON
    public ARestResponse register(@Param int uid) {

        try {


            //fields 表示取出特定的数据
//            List<Notes> list =new Notes().findAll(Fields.of("content"));
//            List<Notes> list = new Notes().page(1,2).getRows();
//            List<Notes> list = new Notes().where("uid", uid).and("is_del",0).findAll();
//            List<Notes> list =new Notes().queryAll("SELECT t_notes.*,t_users.username FROM t_notes,t_users WHERE t_users.uid = ? and t_notes.is_del = ? and t_users.uid = t_notes.uid",uid,0);
            return ARestResponse.ok( new Notes().page(1,2).getRows());
        } catch (Exception e) {
            return ARestResponse.fail(e.getMessage());
        }

    }

    @PostRoute("add")
    @JSON
    public ARestResponse addNote(@Param int uid, @Param String content) {

        try {

            if (uid == 0) {
                return ARestResponse.fail("请正确填写id");
            }

            if (content == null) {
                return ARestResponse.fail("内容不能为空");
            }

            Notes notes = new Notes();
            notes.setUid(uid);
            notes.setContent(content);
            notes.save();

            return ARestResponse.ok();
        } catch (Exception e) {
            return ARestResponse.fail(e.getMessage());
        }

    }

    @PostRoute("update")
    @JSON
    public ARestResponse updateNote(@Param int uid,@Param int noteid, @Param String content) {

        try {

            if (uid == 0) {
                return ARestResponse.fail("请正确填写id");
            }

            if (content == null) {
                return ARestResponse.fail("内容不能为空");
            }

            Notes notes = new Notes().where("noteid",noteid).find();

            if(notes.getUid()!=uid){

                return ARestResponse.fail("登录账号id错误");
            }

            notes.setContent(content);
            notes.where("noteid", noteid).update();

            return ARestResponse.ok();

        } catch (Exception e) {
            return ARestResponse.fail(e.getMessage());
        }

    }

    @PostRoute("delete")
    @JSON
    public ARestResponse deleteNote(@Param int uid,@Param int noteid) {

        try {

            if (uid == 0) {
                return ARestResponse.fail("请正确填写id");
            }



            Notes notes = new Notes().where("noteid",noteid).find();

            if(notes==null){
                return ARestResponse.fail("不存在该条笔记");
            }


            if(notes.getUid()!=uid){
                return ARestResponse.fail("登录账号id错误");
            }

            notes.setIs_del(1);
            notes.where("noteid", noteid).update();

            return ARestResponse.ok();

        } catch (Exception e) {
            return ARestResponse.fail(e.getMessage());
        }

    }


}
