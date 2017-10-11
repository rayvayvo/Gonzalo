class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :u_name
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :password_hash

      t.timestamps
    end
  end
end
