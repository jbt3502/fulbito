class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :nombre
      t.string :descripcion
      t.decimal :tarifa
      t.integer :estado

      t.timestamps
    end
  end
end
