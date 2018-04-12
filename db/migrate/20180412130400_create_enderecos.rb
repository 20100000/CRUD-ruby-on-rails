class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :lagradouro
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.references :amigo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
