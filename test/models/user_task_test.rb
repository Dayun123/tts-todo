# == Schema Information
#
# Table name: user_tasks
#
#  id          :integer          not null, primary key
#  description :string
#  due         :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_user_tasks_on_user_id  (user_id)
#

require 'test_helper'

class UserTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
