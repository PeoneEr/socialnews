class Group < ActiveRecord::Base
  validates_presence_of :uid
  validates_uniqueness_of :uid
end

# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  uid        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
