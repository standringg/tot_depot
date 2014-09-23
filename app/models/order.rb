class Order < ActiveRecord::Base
	 has_many :line_items, dependent: :destroy
	 PAYMENT_TYPES = [ "Cheque", "Credit card", "Purchase order" ] 
	 validates :f_name, :l_name, :address_1, :address_2, :town_city, :post_code, :phone, :email, presence: true
	 validates :pay_type, inclusion: PAYMENT_TYPES 
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item 
    end
  end
end

