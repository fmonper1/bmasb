class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :titulo

      t.timestamps
    end
  end
end
