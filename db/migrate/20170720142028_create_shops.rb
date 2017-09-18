class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :titulo
      t.string :dir1
      t.string :dir2
      t.string :dir3
      t.string :dir4

      t.timestamps
    end
  end
end
