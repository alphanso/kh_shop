class ChainOfStore < ActiveRecord::Base
  STORE_TYPES = [:restaurant, :supermarket, :salon]
  enum category: STORE_TYPES
  has_many :stores
  has_many :addresses, through: :stores
  has_many :contacts, as: :contactable
  belongs_to :user
end
