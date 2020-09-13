class Post < ApplicationRecord
    has_many :likes
    has_many :comments, dependent: :destroy
    belongs_to :user


    def time
        self.created_at.strftime("%b %-d %y, %l:%M%P")
    end
end

