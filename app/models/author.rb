# == Schema Information
# Schema version: 20110611202518
#
# Table name: authors
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)     not null
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_authors_on_name  (name) UNIQUE
#

class Author < ActiveRecord::Base

  include DatabaseValidation

  has_many :poster_authors

  has_many :posters,
            :through => :poster_authors

end
