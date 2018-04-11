class CreateAnotacaos < ActiveRecord::Migration
  def change
    create_table :anotacaos do |t|
      t.text :body
      t.references :amigo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
