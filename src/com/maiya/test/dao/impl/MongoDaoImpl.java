package com.maiya.test.dao.impl;

import java.util.List;
import java.util.Map;

import org.bson.types.ObjectId;
import org.springframework.stereotype.Service;

import com.maiya.test.SKYDAO;
import com.maiya.test.dao.IMongoDao;
import com.maiya.test.entity.Mongo;

@Service("iMongoDao")
public class MongoDaoImpl extends SKYDAO<Mongo, ObjectId> implements IMongoDao {

    /**
     * @param params
     * @param offset
     * @param limit
     * @return
     */
    public List<Mongo> query(Map<String, ?> params, int offset, int limit){
    	return super.query(params, offset, limit);
    }
    
}
