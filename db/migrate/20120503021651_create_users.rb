class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :role_id

      t.string :remember_token

      t.timestamps
    end
    add_index :users, :remember_token
  end
end
