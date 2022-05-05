class CreateShippingAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_addresses do |t|
      t.string :last_name, null:false
      t.string :first_name, null:false
      t.integer :post_code, null:false
      t.string :prefecture, null:false
      t.string :city, null:false
      t.string :address_details, null:false
      t.string :apartment_name
      t.string :room_number
      t.string :phone_number

      t.timestamps
    end
  end
end
