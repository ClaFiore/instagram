class DropPostHashtags < ActiveRecord::Migration[6.0]
  def change
    drop_table :post_hashtags do |t|
      t.integer :post_id, null: false
      t.integer :hashtag_id, null: false
      t.timestamps null: false
    end
  end
end
