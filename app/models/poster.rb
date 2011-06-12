# == Schema Information
# Schema version: 20110611202518
#
# Table name: posters
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)     not null
#  abstract   :text            default(""), not null
#  event_id   :integer(4)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_posters_on_event_id  (event_id)
#

class Poster < ActiveRecord::Base

  include DatabaseValidation

  belongs_to :event

  has_many :poster_authors,
            :dependent => :destroy

  accepts_nested_attributes_for :event

end
