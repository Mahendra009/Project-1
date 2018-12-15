package com.niit.EveryNeedBackend.DAO;

import java.util.List;

import com.niit.EveryNeedBackend.model.CartItem;

public interface CartItemDAO {
	
	public boolean saveCartItem(CartItem cartItem);
	public boolean updateCartItem(CartItem cartItem);
	public boolean deleteCartItem(CartItem cartItem);
	public CartItem getCartItem(int cartItemId);
	public List<CartItem> listCartItems(String userName);

}
