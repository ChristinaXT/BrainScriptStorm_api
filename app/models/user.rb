class User < ApplicationRecord
  has_secure_password

  has_many :stories
  accepts_nested_attributes_for :stories

  validates :password_digest, presence: true
end
