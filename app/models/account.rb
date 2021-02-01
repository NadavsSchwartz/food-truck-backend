class Account < ApplicationRecord
  has_many :food_trucks
  validates_presence_of :name, :email


  def update_name(newName)
    if newName != self.newName
      self.name = newName
      save
    end
  end
end
