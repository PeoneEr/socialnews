# encoding: utf-8

require 'progress_bar'
require 'vk'

namespace :import_from_vk do

  desc 'Import posts from groups'
  task :go => :environment do
    vk = VkontakteApi::Client.new
    Group.all.each do |group| # each group
      records = vk.wall.get(owner_id: group.uid).flatten.delete_if { |d| d.is_a? Fixnum } # get records and delete count
      records.each do |record|
        data = Vk.new(record)
        User.find(group.user_id).entries.create text: data.text, src_url: data.photos[0], src_big_url: data.photos[1], src_small_url: data.photos[2]
      end
    end
  end
end
