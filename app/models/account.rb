class Account < ApplicationRecord
  has_many :food_trucks
  validates_presence_of :name, :email
end
