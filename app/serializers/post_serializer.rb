class PostSerializer < ActiveModel::Serializer
  has_many :post_hashtags
    has_many :hashtags, through: :post_hashtags
    has_many :comments, dependent: :destroy
    belongs_to :user
  attributes :id, :user_id, :caption, :image, :likes
end
