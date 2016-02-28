class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :variant_id
      t.integer :count

      t.timestamps null: false
    end
  end
end
