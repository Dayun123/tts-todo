# == Schema Information
#
# Table name: user_tasks
#
#  id          :integer          not null, primary key
#  description :string
#  due         :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
