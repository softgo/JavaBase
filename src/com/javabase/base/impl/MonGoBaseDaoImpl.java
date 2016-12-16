package com.javabase.base.impl;

import java.util.List;
import java.util.Map;

import org.mongodb.morphia.Key;
import org.mongodb.morphia.query.Query;
import org.mongodb.morphia.query.UpdateOperations;
import org.mongodb.morphia.query.UpdateResults;

import com.javabase.base.MonGoBaseDao;
import com.javabase.base.mongo.MonGoDAO;
import com.javabase.pulgin.mybatis.plugin.PageView;
import com.mongodb.WriteResult;

/**
 * <b>function:</b> 集合持久层的公用的增，删，改，查接口
 * 
 * @author bruce
 * @createDate 1970-1-1
 * @package com.javabase.base
 * @project JavaBase <T> 表示传入实体类
 * @version 1.0
 */
public class MonGoBaseDaoImpl<T, K> extends MonGoDAO<T, K> implements MonGoBaseDao<T, K> {

	
	/**
	 * 查询
	 * 查询条件,map中的key值为字段名(下面用col代表)加上一些后缀，代表意义如下： 
	 * 
	 *     coloum         ：     =         value
	 *     coloum_@like   ： like      value
	 *     coloum_@begin  :  >=        value
	 *     coloum_@end    :  <=        value
	 *     coloum_@contain: 包含       value    (此字段值为数组)
	 *     coloum_@in     : 在其中      value    (map中的value值为数组)
	 * 
	 * coloum : mongo中collections的列;
	 * "_" : 是链接符号,必须写上;
	 * @ 标示组装分割符号;
	 * 
	 * Map<String, String> params = new  HashMap<String,String>();
	 * params.put("id_@like", "j") : 查询 id 中包含 "j" 的所有的集合.
	 * 
	 * @param params
	 * @param offset:从第几条开始
	 * @param limit:可以显示多少条
	 * @return
	 */
	public List<T> query(Map<String, ?> params, int offset, int limit) {
		Query<T> query = getQuery(params).offset(offset).limit(limit);
		return find(query).asList();
	}
	
	
	public T findByMongoId(K pk) {
		return super.get(pk);
	}

	
	public T findByMongoName(String proKey, String proValue) {
		return super.findOne(proKey, proValue);
	}

	
	public T findByMongoProps(Map<String, ?> params) {
		Query<T> query = super.getQuery(params);
		return super.findOne(query);
	}

	
	public List<T> findMongoList(PageView pageView, Map<String, ?> params) {
		int offset = pageView.getStartPage() * pageView.getPageSize();
		int limit = pageView.getPageSize();
		return super.query(params, offset, limit);
	}

	
	public PageView find(PageView pageView, Map<String, ?> params) {
		return super.find(pageView, params);
	}

	
	public List<T> findMongoAll() {
		Query<T> query = createQuery();
		return super.find(query).asList();
	}

	
	public List<T> findMongoAllByPros(Map<String, ?> params) {
		Query<T> query = getQuery(params);
		return super.find(query).asList();
	}

	
	public int addMongoOne(T t) {
		Key<T> one = super.save(t);
		if (one != null) {
			return 1;
		}
		else {
			return -1;
		}
	}

	
	public boolean addMongoAll(List<T> ts) {
		boolean result = true;
		for (T t : ts) {
			Key<T> one = super.save(t);
			if (one == null) {
				result = false;
				return result;
			}
		}
		return result;
	}

	
	public int updateMongoOne(K pk, Map<String, ?> params) {
		return super.update(pk, params);
	}
	
	
	public UpdateResults updateMongoOne(Query<T> query, UpdateOperations<T> ops) {
		return super.update(query, ops);
	}

	
	public boolean updateMongoAll(List<K> pks,List<Map<String, ?>> ts) {
		boolean result = true;
		for (int i = 0,j=0; i<pks.size(); i++,j++) {
			int count = super.update(pks.get(i), ts.get(j));
			if (count<1) {
				result = false;
				return result;
			}
		}
		return result;
	}

	
	public int deleteByMongoId(K pk) {
		WriteResult result = super.deleteById(pk);
		return result.getN();
	}

	
	public boolean deleteMongoAll(List<K> pks) {
		boolean result = true;
		for (K pk : pks) {
			int count = super.deleteById(pk).getN();
			if (count < 1) {
				result = false;
				return result;
			}
		}
		return result;
	}

	
	public long getObjsMongoCount() {
		return super.count();
	}

	
	public long getObjsByMongoProsCount(Map<String, ?> params) {
		return super.count(params);
	}

	public static final int key_auto_number = 10000;
	
	public long getNextIdValue() {
		long now = System.currentTimeMillis();
		long r = Double.valueOf(Math.random() * key_auto_number).longValue();
		long k = now * key_auto_number + r;
		return k;
	}

}
