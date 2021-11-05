package com.devpro.shop13.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.devpro.shop13.dto.BillsModel;
import com.devpro.shop13.dto.UserModel;
import com.devpro.shop13.entities.ProductEntity;
import com.devpro.shop13.entities.SaleOrderEntity;
import com.devpro.shop13.entities.UsersEntity;
@Service
public class SaleOrderService extends BaseService<SaleOrderEntity> {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<SaleOrderEntity> clazz() {
		// TODO Auto-generated method stub
		return SaleOrderEntity.class;
	}

	@Transactional(rollbackOn = Exception.class)
	public SaleOrderEntity save(SaleOrderEntity saleOrder) throws Exception {
		try {

			// SaleOrderProduct.setSeo(new Slugify().slugify(saleOrderProduct.get));

			// save to db
			SaleOrderEntity saved = super.saveOrUpdate(saleOrder);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}
	public List<SaleOrderEntity> search(BillsModel seachModel) {
		String sql = "select *from tbl_saleorder c where 1=1";
		if (seachModel != null) {
			if (seachModel.getID() > 0) {
				sql = sql + "and c.id" + seachModel.getID();
			}
			if (seachModel.getName() != null && !seachModel.getName().isEmpty()) {
				sql = sql + "and c.customer_name like '%" + seachModel.getName() + "'%";
			}
			// tim kiem san pham theo SaleSeo
			if (!StringUtils.isEmpty(seachModel.getSaleSeo())) {
				sql += " and c.seo ='" + seachModel.getSaleSeo() + "'";
			}
		}
		return this.executeNativeSqlWithPaging(sql,-1);
	}
	@Transactional
	public void delete(SaleOrderEntity bill){
		 super.delete(bill);
	}
	@Transactional
	public void deleteById(int id) {
		super.deleteById(id);
	}
}
