class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.intger :rating
      t.string :difficulty
      t.string :content

      t.timestamps
    end
  end
end
