package order.service;

import java.util.ArrayList;

import model.Order;
import order.dao.Dao;
import order.dao.DaoImpl;

public class ServiceImpl implements Service {
	private Dao dao;
	public ServiceImpl() {
		dao = new DaoImpl();
	}
	@Override
	public void addOrder(Order o) {
		// TODO Auto-generated method stub
		dao.insert(o);
	}

	@Override
	public Order getOrder(int num) {
		// TODO Auto-generated method stub
		return dao.select(num);
	}

	@Override
	public ArrayList<Order> orderList(String o_email, int o_state) {
		// TODO Auto-generated method stub
		return dao.selectAll(o_email, o_state);
	}

	@Override
	public void editState(String type, int num) {
		// TODO Auto-generated method stub
		dao.update(type, num);
	}

	@Override
	public void delOrder(int num) {
		// TODO Auto-generated method stub
		dao.delete(num);
	}

}
