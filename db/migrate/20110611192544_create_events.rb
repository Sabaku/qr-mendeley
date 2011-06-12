class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name, :default => false
      t.datetime :start_date, :null => false
      t.datetime :event_date, :null => false
      t.string :location
      t.string :homepage
      t.string :hashtag

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
