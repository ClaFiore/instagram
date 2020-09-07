class User < ApplicationRecord
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users
    has_many :posts, dependent: :destroy
    has_many :comments

    def feed
        feed = []
        self.followees.each do |followee|
          followee.posts.each do |post|
           feed << post
          end
        end
        self.posts.each do |post|
            feed << post
        end
        feed.sort_by(&:created_at).reverse
    end

end


    # validates :name, presence: true
    # validates :username, presence: true, uniqueness 
    # validates :email, presence: true
    # validates :password, presence: true
    


   