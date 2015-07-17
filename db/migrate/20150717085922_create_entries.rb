class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :text
      t.string :src_big_url,
               :src_url,
               :src_small_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
