class User < ApplicationRecord
  has_many :user_tasks, dependent: :destroy

  # Get the stuff from Facebook and make a user
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['name']
    end
  end

  # Grab the Facebook profile picture
  def small_image
    "http://graph.facebook.com/#{self.uid}/picture?type=small"
  end

  def normal_image
    "http://graph.facebook.com/#{self.uid}/picture?type=normal"
  end

end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string
#  uid        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
