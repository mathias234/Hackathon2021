class User < ApplicationRecord
  has_secure_password
  has_many :attendees
  has_many :comments
end
