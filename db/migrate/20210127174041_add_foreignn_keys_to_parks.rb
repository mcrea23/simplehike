class AddForeignnKeysToParks < ActiveRecord::Migration[6.1]
  def change
    add_foregin_key :parks, :trails
    add_foregin_key :reviews, :hikers
  end
end
