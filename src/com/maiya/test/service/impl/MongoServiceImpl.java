package com.maiya.test.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bson.types.ObjectId;
import org.mongodb.morphia.query.Query;
import org.mongodb.morphia.query.UpdateOperations;
import org.mongodb.morphia.query.UpdateResults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javabase.pulgin.mybatis.plugin.PageView;
import com.maiya.test.dao.IMongoDao;
import com.maiya.test.entity.Mongo;
import com.maiya.test.service.IMongoService;

@Service("iMongoService")
public class MongoServiceImpl implements IMongoService {

    @Autowired
    private IMongoDao iMongoDao;

    public List<Mongo> query() {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("order", "tags"); //排序
        return iMongoDao.query(params, 10, 10);
    }

	@Override
	public Mongo findByMongoId(ObjectId pk) {
		return iMongoDao.findByMongoId(pk);
	}

	@Override
	public Mongo findByMongoName(String proKey, String proValue) {
		return iMongoDao.findByMongoName(proKey, proValue);
	}

	@Override
	public Mongo findByMongoProps(Map<String, ?> params) {
		return iMongoDao.findByMongoProps(params);
	}

	@Override
	public List<Mongo> findMongoList(PageView pageView, Map<String, ?> params) {
		return iMongoDao.findMongoList(pageView, params);
	}

	@Override
	public PageView find(PageView pageView, Map<String, ?> params) {
		return iMongoDao.find(pageView, params);
	}

	@Override
	public List<Mongo> findMongoAll() {
		return iMongoDao.findMongoAll();
	}

	@Override
	public List<Mongo> findMongoAllByPros(Map<String, ?> params) {
		return iMongoDao.findMongoAllByPros(params);
	}

	@Override
	public int addMongoOne(Mongo t) {
		return iMongoDao.addMongoOne(t);
	}

	@Override
	public boolean addMongoAll(List<Mongo> ts) {
		return iMongoDao.addMongoAll(ts);
	}

	@Override
	public int updateMongoOne(ObjectId pk, Map<String, ?> params) {
		return iMongoDao.updateMongoOne(pk, params);
	}

	@Override
	public UpdateResults updateMongoOne(Query<Mongo> query, UpdateOperations<Mongo> ops) {
		return iMongoDao.updateMongoOne(query, ops);
	}

	@Override
	public boolean updateMongoAll(List<ObjectId> pks, List<Map<String, ?>> ts) {
		return iMongoDao.updateMongoAll(pks, ts);
	}

	@Override
	public int deleteByMongoId(ObjectId pk) {
		return iMongoDao.deleteByMongoId(pk);
	}

	@Override
	public boolean deleteMongoAll(List<ObjectId> pks) {
		return iMongoDao.deleteMongoAll(pks);
	}

	@Override
	public long getObjsMongoCount() {
		return iMongoDao.getObjsMongoCount();
	}

	@Override
	public long getObjsByMongoProsCount(Map<String, ?> params) {
		return iMongoDao.getObjsByMongoProsCount(params);
	}


}
