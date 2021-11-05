package com.devpro.shop13.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.devpro.shop13.entities.ProductsImagesEntity;
@Service
public class ProductsImagesService  extends BaseService<ProductsImagesEntity> {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<ProductsImagesEntity> clazz() {
		return ProductsImagesEntity.class;
	}

}
