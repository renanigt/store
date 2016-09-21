class CreateTableShopProduct < ActiveRecord::Migration
  def change
    create_table :shops_products, id: false do |t|
      t.integer :shop_id, index: true
      t.integer :product_id, index: true
    end
  end
end
