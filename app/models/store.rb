class Store < ActiveRecord::Base
  belongs_to :user
  has_one :address
end
