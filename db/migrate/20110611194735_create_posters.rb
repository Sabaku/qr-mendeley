class CreatePosters < ActiveRecord::Migration
  def self.up
    create_table :posters do |t|
      t.string :title, :null => false
      t.text :abstract, :null => false
      t.string :download_url, :null => false
      t.belongs_to :event

      t.timestamps
    end

    add_index :posters, :event_id
  end

  def self.down
    drop_table :posters
  end
end
