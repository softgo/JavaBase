package com.maiya.test.dao;

import java.util.List;
import java.util.Map;

import org.bson.types.ObjectId;

import com.javabase.base.MonGoBaseDao;
import com.maiya.test.entity.Mongo;

public interface IMongoDao extends MonGoBaseDao<Mongo,ObjectId> {

    /**
     * 查询城市
     * @param params
     * @param offset
     * @param limit
     * @return
     */
    List<Mongo> query(Map<String, ?> params, int offset, int limit);
    
}
