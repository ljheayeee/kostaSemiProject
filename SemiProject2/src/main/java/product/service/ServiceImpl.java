package product.service;

import java.util.ArrayList;

import model.Product;
import product.dao.Dao;
import product.dao.DaoImpl;


public class ServiceImpl implements Service {
	private Dao dao;

	public ServiceImpl() {
		this.dao = new DaoImpl();
	}

	public void add(Product p) {
		// TODO Auto-generated method stub
		dao.insert(p);
	}

	public ArrayList<Product> getProductsById(String s_email) {
		// TODO Auto-generated method stub
		return dao.selectAllById(s_email);
	}

	public Product getProduct(int num) {
		// TODO Auto-generated method stub
		return dao.select(num);
	}

	public void editProduct(Product p) {
		// TODO Auto-generated method stub
		dao.update(p);
	}

	public void delProduct(int num) {
		// TODO Auto-generated method stub
		dao.delete(num);
	}

	public int makeNum() {
		// TODO Auto-generated method stub
		return dao.selectNum();
	}

	public ArrayList<Product> getProductAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	public Product editQuantity(int q, int num) {
		// TODO Auto-generated method stub
		dao.updateQuantity(q, num);
		return getProduct(num);
	}

	@Override
	public void updateCnt(int num) {
		dao.updateCount(num);
		
	}

	@Override
	public ArrayList<Product> getProductTop5() {
		// TODO Auto-generated method stub
		return dao.selectTop5();
	}

	@Override
	public ArrayList<Product> searchProductByName(String name, String category) {
		
		return dao.searchAllByProductName(name, category);
	}

}
