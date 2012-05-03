# == Schema Information
#
# Table name: languages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  abbr       :string(255)
#  available  :boolean
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Language < ActiveRecord::Base
end
