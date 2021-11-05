package com.devpro.shop13.services;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.Table;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.devpro.shop13.entities.BaseEntity;

@Service
public abstract class BaseService<E extends BaseEntity> {

	public static int SIZE_OF_PAGE = 5;
	public static int SIZE_OF_PAGE_FRONTEND = 8;
	protected abstract EntityManager em();

	protected abstract Class<E> clazz();

	public E getById(int id) {
		return em().find(clazz(), id);
	}
    public E getByTitle(String title)
    {
    	return em().find(clazz(), title);
    }
	
    
	public List<E> findAll() {
		Table tbl = clazz().getAnnotation(Table.class);
		return (List<E>) em().createNativeQuery("SELECT * FROM " + tbl.name(), clazz()).getResultList();
	}
	
	@Transactional
	public E saveOrUpdate(E entity) {
		if (entity.getId() == null || entity.getId() <= 0) {
			em().persist(entity);
			return entity;
		} else {
			return em().merge(entity);
		}
	}

	public void delete(E entity) {
		em().remove(entity);
	}

	public void deleteById(int id) {
		E entity = this.getById(id);
		delete(entity);
	}

	/*
	 * public List<E> executeNativeSql(String sql) { try { Query query =
	 * em().createNativeQuery(sql, clazz()); return query.getResultList(); } catch
	 * (Exception e) { e.printStackTrace(); return new ArrayList<E>(); } }
	 */
	@SuppressWarnings("unchecked")
	public List<E> executeNativeSqlWithPaging(String sql, int page) {
		try {
			Query query = em().createNativeQuery(sql, clazz());
			if(page>=0)
			{
			query.setFirstResult(page*SIZE_OF_PAGE);
			query.setMaxResults(SIZE_OF_PAGE);
			}
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<E>();
		}
	}
	@SuppressWarnings("unchecked")
	public List<E> executeNativeSqlPagingFrontend(String sql, int page) {
		try {
			Query query = em().createNativeQuery(sql, clazz());
			if(page>=0)
			{
			query.setFirstResult(page*SIZE_OF_PAGE_FRONTEND);
			query.setMaxResults(SIZE_OF_PAGE_FRONTEND);
			}
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<E>();
		}
	}
}
