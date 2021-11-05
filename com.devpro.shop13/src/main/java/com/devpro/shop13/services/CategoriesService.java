package com.devpro.shop13.services;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.shop13.dto.CategoriesModel;
import com.devpro.shop13.entities.CategoriesEntity;

@Service
public class CategoriesService extends BaseService<CategoriesEntity>{
     @PersistenceContext
     EntityManager entityManager;
	// tra ve 1 list cac category
     
     public CategoriesEntity edit(CategoriesEntity categories) throws Exception {
 		try {
 			CategoriesEntity categoryOnDb = super.getById(categories.getId());

 			CategoriesEntity saved = super.saveOrUpdate(categories);
 			return saved;
 		} catch (Exception e) {
 			throw e;
 		}

 	}

 	public CategoriesEntity save(CategoriesEntity categories) throws Exception {
 		try {
 			CategoriesEntity saved = super.saveOrUpdate(categories);
 			return saved;
 		} catch (Exception e) {
 			throw e;
 		}

 	}

    @Override
 	protected Class<CategoriesEntity> clazz() {
 		return CategoriesEntity.class;
 	}	
 	@Override
 	protected EntityManager em() {
 		return entityManager;
 	}
 	public List<CategoriesEntity> findAllActive(){
		String sql ="select * from tbl_category where status = 1";
		return super.executeNativeSqlWithPaging(sql,-1);
	}
	public  List<CategoriesEntity> search(CategoriesModel searchModel)
	{
		
			String sql="SELECT * FROM tbl_category c WHERE 1=1";
			if(searchModel != null) {
			if(searchModel.getId()>0)
			{
				sql= sql+" AND c.id= "+ searchModel.getId();
			}
			if(searchModel.getName() != null && !searchModel.getName().isEmpty())
			{
				sql= sql+" AND c.name like '%"+ searchModel.getName()+"%'";
			}
			}
			return this.executeNativeSqlPagingFrontend(sql,-1);
	}
	
	
	
	public List<CategoriesEntity> getAllParents() {
		String sql = "select * from tbl_category tc where tc.parent_id is null";
		return this.executeNativeSqlPagingFrontend(sql,-1);
	}
}
