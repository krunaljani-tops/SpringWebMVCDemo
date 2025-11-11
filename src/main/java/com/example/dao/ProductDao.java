package com.example.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.example.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void saveProduct(Product product) {
		hibernateTemplate.save(product);
	}
	
	public Product getProduct(int id) {
		return hibernateTemplate.get(Product.class, id);
	}
	public List<Product> getProducts() {
		return hibernateTemplate.loadAll(Product.class);
	}
	@Transactional
	public void deleteProduct(int id) {
		Product p = hibernateTemplate.get(Product.class, id);
		hibernateTemplate.delete(p);
	}
	@Transactional
	public void updateProduct(Product product) {
		hibernateTemplate.update(product);
	}
}
