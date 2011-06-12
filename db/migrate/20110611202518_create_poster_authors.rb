class CreatePosterAuthors < ActiveRecord::Migration
  def self.up
    create_table :poster_authors do |t|
      t.belongs_to :poster, :null => false
      t.references :author, :null => false
      t.references :affiliation, :null => false

      t.timestamps
    end

    add_index :poster_authors, :poster_id
    add_index :poster_authors, [ :poster_id, :author_id ], :unique => true, :name => "poster_authors_ids_index"
  end

  def self.down
    drop_table :poster_authors
  end
end
