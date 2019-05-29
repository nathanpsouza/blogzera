class User < ApplicationRecord
  has_secure_password

  has_many :posts

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }
end
