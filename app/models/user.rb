class User < ActiveRecord::Base

  has_secure_password

  has_many :orders
  has_many :reviews

  validates :email, :uniqueness => true
  validates :password, length: { in: 6..20 }

  def name
    firstname + " " + lastname
  end

end
