class CreateScaffolds < ActiveRecord::Migration[5.0]
  def change
    create_table :scaffolds do |t|
      t.string :review
      t.string :product_id
      t.string :user_id
      t.string :rating
      t.string :description

      t.timestamps
    end
  end
end
