class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :cart_id
      t.string :user_id

      t.timestamps
    end
  end
end
