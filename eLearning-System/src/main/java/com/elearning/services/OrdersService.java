package com.elearning.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elearning.models.Orders;
import com.elearning.repos.OrdersRepository;

@Service
public class OrdersService {

	@Autowired OrdersRepository repo;
	
	public void saveOrder(Orders o) {
		repo.save(o);
	}
	
	public List<Orders> allOrders(){
		return repo.findAll();
	}
	
	public List<Orders> userOrders(String userid,String itemtype){
		return repo.findByUseridAndItemtype(userid, itemtype);
	}
	
	public List<Orders> vendorOrders(String userid,String itemtype){
		return repo.findByVendoridAndItemtype(userid, itemtype);
	}
}
