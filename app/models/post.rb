class Post < ApplicationRecord
    has_many :post_hashtags
    has_many :hashtags, through: :post_hashtags
    has_many :comments, dependent: :destroy
    belongs_to :user
end



# def self.sorted_tweets
#     Tweet.all.sort_by do |tweet|
#         tweet.created_at
#     end
# end
