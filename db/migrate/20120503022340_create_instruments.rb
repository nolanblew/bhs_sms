class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.integer :student_id
      t.string :instrument
      t.string :instrument_number
      t.string :description

      t.timestamps
    end
    add_index :instruments, :student_id
  end
end
