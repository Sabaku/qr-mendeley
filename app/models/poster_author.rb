# == Schema Information
# Schema version: 20110611202518
#
# Table name: poster_authors
#
#  id             :integer(4)      not null, primary key
#  poster_id      :integer(4)      not null
#  author_id      :integer(4)      not null
#  affiliation_id :integer(4)      not null
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  poster_authors_ids_index           (poster_id,author_id) UNIQUE
#  index_poster_authors_on_poster_id  (poster_id)
#

class PosterAuthor < ActiveRecord::Base

  include DatabaseValidation

  belongs_to :poster

  belongs_to :author

  belongs_to :affiliation

end
