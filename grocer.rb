def consolidate_cart(cart)
  new_cart = {}
  cart.each_with_index do |hash, ind|
    hash.each do |food, value|
    if new_cart[food]
      new_cart[food][:count] += 1
    else
      new_cart[food] = value
      new_cart[food][:count] = 1
    end
  end
end      
  new_cart
end

def apply_coupons(cart, coupons)
  with_coupon = {}
  cart.each do |food, value|
    coupons.each do |coupon|
      if food == coupon[:item] && food[:count] >= coupon[:num]
        value[:count] = value[:count] - coupon[:num]
        if ["#{food} W/COUPON"]
          ["#{food} W/COUPON"][:count] += 1
        else
      end
    end
    with_coupon[food] = value
  end
  with_coupon
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
