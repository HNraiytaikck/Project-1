package com.elearning.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.elearning.models.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {
	
	List<Orders> findByUseridAndItemtype(String userid,String itemtype);
	List<Orders> findByVendoridAndItemtype(String vendorid,String itemtype);

}
