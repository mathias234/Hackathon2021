class Event < ApplicationRecord
  has_many :attendees
  has_many :comments
end
