class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.string :total_price
      t.string :decimal

      t.timestamps
    end
  end
end
