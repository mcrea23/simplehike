class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :location
      t.string :name
      t.integer :trail_id

      t.timestamps
    end
  end
end
