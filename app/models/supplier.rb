class Supplier < ActiveRecord::Base
  has_secure_password
  has_many(:products)

  validates(:email, uniqueness: true, presence: true)
  validates(:name, presence: true)
  validates(:password, length: {minimum: 5})
end





