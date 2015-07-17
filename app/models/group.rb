class Group < ActiveRecord::Base
  validates_presence_of :uid
  validates_uniqueness_of :uid

  belongs_to :user
end

# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  uid        :integer
#  title      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
