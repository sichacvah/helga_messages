class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :email
      t.string :name
      t.string :card_token

      t.timestamps null: false
    end
  end
end
