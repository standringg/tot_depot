json.array!(@orders) do |order|
  json.extract! order, :id, :f_name, :l_name, :address_1, :address_2, :town_city, :post_code, :phone, :email, :pay_type
  json.url order_url(order, format: :json)
end
