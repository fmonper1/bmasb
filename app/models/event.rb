class Event < ApplicationRecord
  belongs_to :shop
  belongs_to :type
  belongs_to :state
  belongs_to :user
  has_many :comments
end
