# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  role_id         :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class User < ActiveRecord::Base
  has_secure_password

  before_save { |user| user.username = username.downcase}
  before_save :create_remember_token


  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
