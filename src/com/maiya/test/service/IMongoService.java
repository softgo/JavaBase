package com.maiya.test.service;

import java.util.List;

import org.bson.types.ObjectId;

import com.javabase.base.MonGoBaseDao;
import com.maiya.test.entity.Mongo;


public interface IMongoService extends MonGoBaseDao<Mongo,ObjectId> {

    /**
     * 查询城市
     * @return
     */
   public List<Mongo> query();
   
}
