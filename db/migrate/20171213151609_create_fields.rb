class CreateFields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.references :local, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.decimal :tarifa
      t.string :foto

      t.timestamps
    end
  end
end
