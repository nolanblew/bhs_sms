# == Schema Information
#
# Table name: parents
#
#  id              :integer         not null, primary key
#  student_id      :integer
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  cell            :string(255)
#  language        :integer
#  relationship    :string(255)
#  primary_contact :boolean         default(TRUE)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Parent < ActiveRecord::Base
  has_one :student
end
