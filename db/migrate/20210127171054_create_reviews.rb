class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :difficulty
      t.string :content
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
