class CreateFieldRents < ActiveRecord::Migration[5.1]
  def change
    create_table :field_rents do |t|
      t.references :field, foreign_key: true
      t.references :service, foreign_key: true
      t.date :fecha
      t.time :hora
      t.string :descripcion

      t.timestamps
    end
  end
end
