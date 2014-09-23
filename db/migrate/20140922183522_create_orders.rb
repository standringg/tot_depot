class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :f_name
      t.string :l_name
      t.text :address_1
      t.text :address_2
      t.string :town_city
      t.string :post_code
      t.string :phone
      t.string :email
      t.string :pay_type

      t.timestamps
    end
  end
end
