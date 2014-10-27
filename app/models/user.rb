class User < ActiveRecord::Base
  enum role: {merchant: 1, admin: 2}
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :merchant
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :store
end
