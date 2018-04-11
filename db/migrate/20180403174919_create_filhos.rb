class CreateFilhos < ActiveRecord::Migration
  def change
    create_table :filhos do |t|
      t.string :name
      t.string :sexo
      t.references :pai, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
