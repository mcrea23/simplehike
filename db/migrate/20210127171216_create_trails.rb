class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.integer :rating
      t.string :difficulty
      t.string :content
      t.float :length
      t.string :name
      t.integer :park_id

      t.timestamps
    end
  end
end
