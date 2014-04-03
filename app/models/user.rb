class User < ActiveRecord::Base
  has_secure_password
  has_many(:purchases)

  validates(:email, uniqueness: true, presence: true)
  validates(:name, presence: true)
  # validates(:admin, inclusion: {in: [true, false] })
  validates(:password, length: {minimum: 5, message: 'must be 5 characters'})
end
