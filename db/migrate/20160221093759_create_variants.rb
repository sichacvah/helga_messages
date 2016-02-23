class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.integer :product_id
      t.text :description
      t.float :price
      t.string :name
      t.string :image


      t.timestamps null: false
    end
  end
end
