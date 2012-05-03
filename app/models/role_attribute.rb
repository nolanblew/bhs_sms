# == Schema Information
#
# Table name: role_attributes
#
#  id         :integer         not null, primary key
#  role_id    :string(255)
#  key        :string(255)
#  value      :boolean
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class RoleAttribute < ActiveRecord::Base
end
