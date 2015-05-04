class CreatePedidoLocs < ActiveRecord::Migration
  def change
    create_table :pedido_locs do |t|
      t.integer :obra_id
      t.integer :pedido_id

      t.timestamps null: false
    end
  end
end
