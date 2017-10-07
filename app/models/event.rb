class Event < ApplicationRecord
  belongs_to :shop
  belongs_to :type
  belongs_to :state
  has_many :comments
end
