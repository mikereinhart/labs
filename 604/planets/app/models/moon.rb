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

class Moon < ActiveRecord::Base
  attr_accessible :diameter, :img_url, :name

  belongs_to :planet
end
