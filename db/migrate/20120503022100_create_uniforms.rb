class CreateUniforms < ActiveRecord::Migration
  def change
    create_table :uniforms do |t|
      t.integer :number
      t.integer :student_id
      t.string :height
      t.string :waist
      t.string :other

      t.timestamps
    end
  end
end
