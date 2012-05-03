class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :abbr
      t.boolean :available

      t.timestamps
    end
  end
end
