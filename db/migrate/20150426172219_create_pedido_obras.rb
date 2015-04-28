class CreatePedidoObras < ActiveRecord::Migration
  def change
    create_table :pedido_obras do |t|

      t.timestamps null: false
    end
  end
end
