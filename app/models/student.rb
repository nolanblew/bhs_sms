# == Schema Information
#
# Table name: students
#
#  id                 :integer         not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  graduation         :integer
#  email              :string(255)
#  cell               :string(255)
#  parent1_first_name :string(255)
#  parent1_last_name  :string(255)
#  parent1_email      :string(255)
#  parent1_cell       :string(255)
#  parent1_language   :integer
#  parent2_first_name :string(255)
#  parent2_last_name  :string(255)
#  parent2_email      :string(255)
#  parent2_cell       :string(255)
#  parent2_language   :integer
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

class Student < ActiveRecord::Base
  has_one :uniform
end
