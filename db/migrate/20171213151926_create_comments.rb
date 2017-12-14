class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :local, foreign_key: true
      t.string :comentario

      t.timestamps
    end
  end
end
