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

class UserTask < ApplicationRecord
end
