class Post < ApplicationRecord
    has_many :post_hashtags
    has_many :hashtags, through: :post_hashtags
    has_many :comments, dependent: :destroy
    belongs_to :user
end
