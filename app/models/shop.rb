class Shop < ApplicationRecord
  has_many :events
  belongs_to :company

end
