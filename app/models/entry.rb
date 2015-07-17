class Entry < ActiveRecord::Base
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
