package com.devpro.shop13.services;

import java.io.File;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop13.entities.SaleOrderEntity;
import com.devpro.shop13.entities.SaleorderProductEntity;
import com.github.slugify.Slugify;
@Service
public class SaleOrderProductService extends BaseService<SaleorderProductEntity> {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<SaleorderProductEntity> clazz() {
		// TODO Auto-generated method stub
		return SaleorderProductEntity.class;
	}

	
	@Transactional(rollbackOn = Exception.class)
	public SaleorderProductEntity save(SaleorderProductEntity saleOrderProduct) throws Exception {
		try {
			//SaleOrderProduct.setSeo(new Slugify().slugify(saleOrderProduct.get));

			// save to db
			SaleorderProductEntity saved = super.saveOrUpdate(saleOrderProduct);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}
	public List<SaleorderProductEntity> find(int saleId) {

		// khởi tạo câu lệnh
		String sql = "SELECT  * FROM tbl_saleorder_products p  WHERE p.saleorder_id= "+saleId+"";

		// tim kiem san pham theo seachText
		
		return executeNativeSqlWithPaging(sql,-1);
	}
	@Transactional
	public void delete(SaleorderProductEntity invoice){
		 super.delete(invoice);
	}
	@Transactional
	public void deleteById(int id) {
		super.deleteById(id);
	}
}
