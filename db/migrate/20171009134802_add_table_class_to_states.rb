class AddTableClassToStates < ActiveRecord::Migration[5.1]
  def change
    add_column :states, :table_class, :String
  end
end
