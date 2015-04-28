class CreateObras < ActiveRecord::Migration
  def change
    create_table :obras do |t|
      t.date :inicio
      t.date :entrega

      t.timestamps null: false
    end
  end
end
