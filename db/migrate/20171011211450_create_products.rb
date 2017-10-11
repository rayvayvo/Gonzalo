class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :price
      t.string :quantity
      t.string :description
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
