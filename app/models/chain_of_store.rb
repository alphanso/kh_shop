class ChainOfStore < ActiveRecord::Base
  has_many :stores
  has_many :addresses, through: :stores
  has_many :contacts, as: :contactable
end
