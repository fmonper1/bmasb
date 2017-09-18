class AddStateToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :state, foreign_key: true
  end
end
