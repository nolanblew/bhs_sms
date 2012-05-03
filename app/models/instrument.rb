# == Schema Information
#
# Table name: instruments
#
#  id                :integer         not null, primary key
#  student_id        :integer
#  instrument        :string(255)
#  instrument_number :string(255)
#  description       :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

class Instrument < ActiveRecord::Base
end
