class AddShopReferenceToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :shop, foreign_key: true
  end
end
