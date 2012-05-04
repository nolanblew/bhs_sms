class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :graduation
      t.string :email
      t.string :cell

      t.timestamps
    end
  end
end
