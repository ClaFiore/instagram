class PostSerializer < ActiveModel::Serializer
  
    has_many :comments
    has_many :likes
    has_one :user
  
  attributes :id, :user_id, :caption, :image, :comments, :likes, :created_at, :time, :user

 


end
