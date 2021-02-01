class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :food_trucks
end
