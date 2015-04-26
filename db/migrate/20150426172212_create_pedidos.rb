class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.float :m2
      t.date :orden
      t.date :recibido

      t.timestamps null: false
    end
  end
end
