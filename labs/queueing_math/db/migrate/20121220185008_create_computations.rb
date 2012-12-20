class CreateComputations < ActiveRecord::Migration
  def change
    create_table :computations do |t|
      t.string :name
      t.text :result

      t.timestamps
    end
  end
end
