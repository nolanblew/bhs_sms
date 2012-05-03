# == Schema Information
#
# Table name: uniform_damages
#
#  id          :integer         not null, primary key
#  uniform_id  :integer
#  student_id  :integer
#  description :string(255)
#  fixed       :boolean
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class UniformDamage < ActiveRecord::Base
end
