package com.devpro.shop13.services;

import java.io.File;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop13.conf.MVCConf;
import com.devpro.shop13.dto.UserModel;
import com.devpro.shop13.entities.ProductEntity;
import com.devpro.shop13.entities.ProductsImagesEntity;
import com.devpro.shop13.entities.UsersEntity;
import com.github.slugify.Slugify;


@Service
public class UserService extends BaseService<UsersEntity> {
	@PersistenceContext
	 EntityManager entityManager;
	@Override
	protected EntityManager em() {
		return entityManager;
	}
	@Override
	protected Class<UsersEntity> clazz() {
		return UsersEntity.class;
	}
	public List<UsersEntity> search(UserModel seachModel) {
		String sql = "select *from tbl_users c where 1=1";
		if (seachModel != null) {
			if (seachModel.getID() > 0) {
				sql = sql + "and c.id" + seachModel.getID();
			}
			if (seachModel.getUserName() != null && !seachModel.getUserName().isEmpty()) {
				sql = sql + "and c.title like '%" + seachModel.getUserName() + "'%";
			}
		}
		return this.executeNativeSqlPagingFrontend(sql,-1);
	}

	@Transactional(rollbackOn = Exception.class)
	public UsersEntity edit(UsersEntity users) throws Exception {
		try {
			UsersEntity usersOnDb = super.getById(users.getId());

			UsersEntity saved = super.saveOrUpdate(users);
			return saved;
		} catch (Exception e) {
			throw e;
		}

	}
	@Transactional(rollbackOn = Exception.class)
	public UsersEntity save(UsersEntity users) throws Exception {
		try {
			UsersEntity saved = super.saveOrUpdate(users);
			return saved;
		} catch (Exception e) {
			throw e;
		}

	}
	public UsersEntity loadUserByUsername(String userName) {
		String sql = "select * from tbl_users u where u.username = '" + userName + "'";
		List<UsersEntity> users = this.executeNativeSqlPagingFrontend(sql,-1);
		if(users == null || users.size() <= 0) return null;
		return users.get(0);
	}

	
}
