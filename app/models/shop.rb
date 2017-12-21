class Shop < ApplicationRecord
  has_many :events
  belongs_to :company

  def tienda_y_empresa
  end
end
