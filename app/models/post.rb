class Post < ApplicationRecord
    has_many :likes
    has_many :comments, dependent: :destroy
    belongs_to :user
end

