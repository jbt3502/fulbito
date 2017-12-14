class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :persona, foreign_key: true
      t.references :user_type, foreign_key: true
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
