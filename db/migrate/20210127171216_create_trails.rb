class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.integer :rating
      t.string :difficulty
      t.string :content
      t.integer :length
      t.string :name

      t.timestamps
    end
  end
end
