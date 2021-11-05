package com.devpro.shop13.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.devpro.shop13.dto.CategoriesModel;
import com.devpro.shop13.dto.RoleModel;
import com.devpro.shop13.entities.CategoriesEntity;
import com.devpro.shop13.entities.RolesEntity;

@Service
public class RoleService extends BaseService<RolesEntity> {

	@PersistenceContext // là tập các thể hiện của entity được quản lý, tồn tại trong một kho dữ liệu.
	EntityManager entityManager;// Entity Manager là đối tượng quản lý các entity.

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<RolesEntity> clazz() {
		// TODO Auto-generated method stub
		return RolesEntity.class;
	}

	public List<RolesEntity> search(RoleModel searchModel) {
		String sql = "select * from tbl_roles c where 1=1";// thu thuat de noi cau lechj
		if (searchModel != null) {
			if (searchModel.getId() > 0) {
				sql = sql + "and c.id" + searchModel.getId();
			}
			if (searchModel.getName() != null && !searchModel.getName().isEmpty()) {
				sql = sql + "and c.name like '%" + searchModel.getName() + "'%";
			}
		}

		return this.executeNativeSqlPagingFrontend(sql,-1);
	}
	public RolesEntity getRoleByName(String role) {
		String sql = "select * from tbl_roles r where r.name ='GUEST'";// " + role + "
		List<RolesEntity> listRole = this.executeNativeSqlPagingFrontend(sql,-1);
		if (listRole == null || listRole.size() <= 0) {
			return null;
		} else {
			return listRole.get(0);
		}
	}
	public RolesEntity getRoleByname(String role) {
		String sql = "select * from tbl_roles r where r.name ='ADMIN'";// " + role + "
		List<RolesEntity> listrole = this.executeNativeSqlPagingFrontend(sql,-1);
		if (listrole == null || listrole.size() <= 0) {
			return null;
		} else {
			return listrole.get(0);
		}
	}
}
