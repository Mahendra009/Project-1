package com.niit.EveryNeedBackend.DAO;

import com.niit.EveryNeedBackend.model.OrderDetail;

public interface OrderDetailDAO {
	
	public boolean addOrderDetail(OrderDetail orderDetail);
	public boolean updateOrderDetail(String userName);
	public boolean deleteOrderDetail(OrderDetail orderDetail);
	
	

}
