class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :sexo
      t.integer :dni
      t.string :correo
      t.datetime :fecha_nacimiento
      t.string :celular
      t.string :direccion

      t.timestamps
    end
  end
end
