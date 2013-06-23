# == Schema Information
#
# Table name: planets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  diameter   :string(255)
#  img_url    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Planet < ActiveRecord::Base
  attr_accessible :name, :diameter, :img_url

  has_many :moons

end
