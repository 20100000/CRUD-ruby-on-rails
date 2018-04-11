class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.string :name
      t.string :endereco
      t.string :email
      t.string :tel

      t.timestamps null: false
    end
  end
end
