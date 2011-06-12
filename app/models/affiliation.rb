# == Schema Information
# Schema version: 20110611202518
#
# Table name: affiliations
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)     not null
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_affiliations_on_name  (name) UNIQUE
#

class Affiliation < ActiveRecord::Base

  include DatabaseValidation

end
