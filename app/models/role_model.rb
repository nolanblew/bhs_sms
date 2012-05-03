# == Schema Information
#
# Table name: role_models
#
#  id          :integer         not null, primary key
#  key         :string(255)
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class RoleModel < ActiveRecord::Base
end
