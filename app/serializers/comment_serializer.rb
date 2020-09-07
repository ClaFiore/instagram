class CommentSerializer < ActiveModel::Serializer
  belongs_to :post
  belongs_to :user
  attributes :id, :content, :post_id, :user_id
end
