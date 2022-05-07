class Product < ApplicationRecord
  has_many :images, dependent: :destroy
  belongs_to :user
  belongs_to :buyer, class_name: "User", optional: true, foreign_key: "buyer_id"
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_presence_of :images
end
