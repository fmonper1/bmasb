class AddTypeIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :type, foreign_key: true
  end
end
