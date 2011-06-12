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

require 'test_helper'

class PosterTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
