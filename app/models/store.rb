class Store < ActiveRecord::Base
  has_many :contacts, as: :contactable
  has_one :address
  belongs_to :chain_of_store
end
