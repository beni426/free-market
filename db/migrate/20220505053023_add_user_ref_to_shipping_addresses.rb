class AddUserRefToShippingAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :shipping_addresses, :user, null: false, foreign_key: true
  end
end
