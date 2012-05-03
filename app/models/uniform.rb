# == Schema Information
#
# Table name: uniforms
#
#  id         :integer         not null, primary key
#  number     :integer
#  student_id :integer
#  height     :string(255)
#  waist      :string(255)
#  other      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Uniform < ActiveRecord::Base
end
