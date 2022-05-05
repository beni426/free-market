class ShippingAddress < ApplicationRecord
  belongs_to :user, optional: true
  validates :last_name, :first_name, :post_code, :prefecture, :city, :address_detail, presence: true
end
