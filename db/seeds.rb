require 'faker'
User.destroy_all
Post.destroy_all
Comment.destroy_all
Follow.destroy_all
Hashtag.destroy_all
PostHashtag.destroy_all

hashtags = ['#picoftheday', '#instagood', '#nofilter', '#tbt', '#love', '#nature', '#family', '#friends', '#travel', '#vacations', '#summer', '#graduationday']

10.times do
    user = User.create(username: Faker::Internet.username, email: Faker::Internet.email)
    post = Post.create(user_id: user.id, likes: 3)
    comment = Comment.create(post_id: post.id, content: Faker::TvShows::Friends.quote)
    hashtag = Hashtag.create(name: hashtags.sample)
end

