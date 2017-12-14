class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :local, foreign_key: true
      t.integer :calificacion
      t.string :descripcion

      t.timestamps
    end
  end
end
