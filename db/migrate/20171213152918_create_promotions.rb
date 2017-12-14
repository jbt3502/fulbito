class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.references :local, foreign_key: true
      t.string :descripcion

      t.timestamps
    end
  end
end
