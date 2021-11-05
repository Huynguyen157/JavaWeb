package com.devpro.shop13.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.devpro.shop13.dto.Contact;
import com.devpro.shop13.entities.ContactEntity;


@Service
public class ContactService extends BaseService<ContactEntity> {

	@PersistenceContext
	EntityManager entityManager;

	public List<ContactEntity> search(Contact searchModel) {
		String sql = "select *from tbl_contact c where 1=1";
		if (searchModel != null) {
			if (searchModel.getId() > 0) {
				sql = sql + "and c.id" + searchModel.getId();
			}
			if (searchModel.getMessage() != null && !searchModel.getMessage().isEmpty()) {
				sql = sql + "and c.title like '%" + searchModel.getMessage() + "'%";
			}
		}
		return this.executeNativeSqlPagingFrontend(sql,-1);
	}

	@Override
	protected EntityManager em() {

		return entityManager;
	}

	@Override
	protected Class<ContactEntity> clazz() {
		// TODO Auto-generated method stub
		return ContactEntity.class;
	}

}
