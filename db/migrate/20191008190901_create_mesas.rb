class CreateMesas < ActiveRecord::Migration[5.2]
  def change
    create_table :mesas do |t|
      t.string :modelo
      t.string :marca
      t.text :caract
      t.string :dim
      t.integer :patas

      t.timestamps
    end
  end
end
