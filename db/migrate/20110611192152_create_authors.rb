class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.string :name, :null => false

      t.timestamps
    end

    add_index :authors, :name, :unique => true
  end

  def self.down
    drop_table :authors
  end
end
