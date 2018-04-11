class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
