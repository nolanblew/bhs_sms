# == Schema Information
#
# Table name: students
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  graduation :integer
#  email      :string(255)
#  cell       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Student < ActiveRecord::Base
  has_one :uniform
  has_one :instrument
  has_many :parents
end
