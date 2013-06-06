# == Schema Information
#
# Table name: moons
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  diameter   :string(255)
#  img_url    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MoonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
