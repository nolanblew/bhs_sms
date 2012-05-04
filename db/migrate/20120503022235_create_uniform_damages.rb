class CreateUniformDamages < ActiveRecord::Migration
  def change
    create_table :uniform_damages do |t|
      t.integer :uniform_id
      t.integer :student_id
      t.string :description
      t.boolean :fixed

      t.timestamps
    end
    add_index :uniform_damages, :uniform_id
    add_index :uniform_damages, :student_id
  end
end
