class UserSerializer < ActiveModel::Serializer
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users
    has_many :posts, dependent: :destroy
    has_many :comments
    has_many :likes

  attributes :id, :username, :name, :bio, :email, :password, :profilepic, :comments, :likes, :posts, :followers, :followees

  
  
end
