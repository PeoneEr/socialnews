class Entry < ActiveRecord::Base
  validates_uniqueness_of :text, :src_url, :src_big_url, :src_small_url
end

# == Schema Information
#
# Table name: entries
#
#  id            :integer          not null, primary key
#  text          :text
#  src_big_url   :string
#  src_url       :string
#  src_small_url :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
