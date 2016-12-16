package com.maiya.test;

import org.bson.types.ObjectId;

import com.javabase.base.impl.MonGoBaseDaoImpl;
import com.javabase.base.mongo.DataStore;
import com.maiya.test.entity.Mongo;


@DataStore(tagValue = "manager", mongoDBName = "data")
public class SKYDAO<T, K>  extends MonGoBaseDaoImpl<Mongo,ObjectId> {
	
	public static final int key_cardinal_number = 1000;

	@Override
	public long getNextIdValue() {
		long now = System.currentTimeMillis();
		long r = Double.valueOf(Math.random() * key_cardinal_number).longValue();
		long k = now * key_cardinal_number + r;
		return k;
	}

}
