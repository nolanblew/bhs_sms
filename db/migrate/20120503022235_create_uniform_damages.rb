class CreateUniformDamages < ActiveRecord::Migration
  def change
    create_table :uniform_damages do |t|
      t.integer :uniform_id
      t.integer :student_id
      t.string :description
      t.boolean :fixed

      t.timestamps
    end
  end
end
