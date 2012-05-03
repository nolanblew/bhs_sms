class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :graduation
      t.string :email
      t.string :cell

      #First Parent
      t.string :parent1_first_name
      t.string :parent1_last_name
      t.string :parent1_email
      t.string :parent1_cell
      t.integer :parent1_language

      #Second Parent
      t.string :parent2_first_name
      t.string :parent2_last_name
      t.string :parent2_email
      t.string :parent2_cell
      t.integer :parent2_language

      t.timestamps
    end
  end
end
