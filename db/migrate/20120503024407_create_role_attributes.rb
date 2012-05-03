class CreateRoleAttributes < ActiveRecord::Migration
  def change
    create_table :role_attributes do |t|
      t.string :role_id
      t.string :key
      t.boolean :value

      t.timestamps
    end
  end
end
