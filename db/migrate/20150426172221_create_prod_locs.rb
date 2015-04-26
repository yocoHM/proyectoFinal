class CreateProdLocs < ActiveRecord::Migration
  def change
    create_table :prod_locs do |t|
      t.float :m2

      t.timestamps null: false
    end
  end
end
