class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :datetime
      t.string :location
      t.string :contact

      t.timestamps
    end
  end
end
