# == Schema Information
# Schema version: 20110611202518
#
# Table name: events
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)     default("0")
#  start_date :datetime        not null
#  event_date :datetime        not null
#  location   :string(255)
#  homepage   :string(255)
#  hashtag    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
