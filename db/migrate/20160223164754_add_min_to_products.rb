class AddMinToProducts < ActiveRecord::Migration
  def change
    add_column :products, :min, :int
  end
end
