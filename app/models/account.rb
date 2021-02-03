class Account < ApplicationRecord
  has_many :food_trucks
  validates_presence_of :name, :email, :password
  has_secure_password
  validates_uniqueness_of :email
end
