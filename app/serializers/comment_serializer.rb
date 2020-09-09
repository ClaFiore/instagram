class CommentSerializer < ActiveModel::Serializer
  belongs_to :post
  has_one :user
  attributes :id, :content, :post_id, :user_id, :user
end
