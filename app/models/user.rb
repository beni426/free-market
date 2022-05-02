class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :password, :email, :last_name, :first_name,   :birthday, presence: true
end
