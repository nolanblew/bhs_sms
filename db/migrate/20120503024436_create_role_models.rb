class CreateRoleModels < ActiveRecord::Migration
  def change
    create_table :role_models do |t|
      t.string :key
      t.string :description

      t.timestamps
    end
  end
end
