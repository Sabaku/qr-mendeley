class CreateAffiliations < ActiveRecord::Migration
  def self.up
    create_table :affiliations do |t|
      t.string :name, :null => false

      t.timestamps
    end

    add_index :affiliations, :name, :unique => true
  end

  def self.down
    drop_table :affiliations
  end
end
