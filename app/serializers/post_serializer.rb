class PostSerializer < ActiveModel::Serializer
  
    has_many :comments
    has_one :user
  
  attributes :id, :user_id, :caption, :image, :likes, :comments

 


end
