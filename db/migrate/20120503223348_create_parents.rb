class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :student_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell
      t.integer :language
      t.string :relationship
      t.boolean :primary_contact, default: true

      t.timestamps
    end
    add_index :parents, :student_id
  end
end
