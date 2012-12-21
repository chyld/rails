class CreateHobbits < ActiveRecord::Migration
  def change
    create_table :hobbits do |t|
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
