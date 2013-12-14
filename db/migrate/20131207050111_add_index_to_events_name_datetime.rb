class AddIndexToEventsNameDatetime < ActiveRecord::Migration
  def change
  	add_index :events, :name, unique: true
  	add_index :events, :datetime, unique: true  	
  end
end
