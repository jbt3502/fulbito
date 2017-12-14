class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.references :district, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.string :direccion
      t.string :direccion_google
      t.string :telefono

      t.timestamps
    end
  end
end
