class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :titulo
      t.text :descripcion
      t.date :fecha_contacto
      t.string :nombre_contacto
      t.string :numero_contacto

      t.timestamps
    end
  end
end
