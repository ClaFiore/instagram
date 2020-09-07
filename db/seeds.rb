require 'faker'
User.destroy_all
Post.destroy_all
Comment.destroy_all
Follow.destroy_all
Hashtag.destroy_all
PostHashtag.destroy_all

hashtags = ['#picoftheday', '#instagood', '#nofilter', '#tbt', '#love', '#nature', '#family', '#friends', '#travel', '#vacations', '#summer', '#graduationday']

10.times do
    hashtag = Hashtag.create(name: hashtags.sample)
end

gaga = User.create(username: '@ladygaga', email: 'gaga@gmail.com', name: 'Stefanie Germanotta', bio: 'Singer and Actress(A Star Is Born)', password: 'gagapassword', profilepic: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Lady_Gaga_interview_2016.jpg/1200px-Lady_Gaga_interview_2016.jpg')
post1 = Post.create(user_id: gaga.id, likes: 128, caption: 'Love Venice!', image: 'https://cdn.cnn.com/cnnnext/dam/assets/170606121206-italy---travel-destination---shutterstock-517522957.jpg')
post2 = Post.create(user_id: gaga.id, likes: 178, caption: 'Beautiful Cinque Terre', image: 'https://www.fodors.com/wp-content/uploads/2019/03/20GorgeousSidetownsinItaly__HERO_shutterstock_688078159.jpg')


jennifer = User.create(username: '@jennifer', email: 'ja@gmail.com', name: 'Jennifer Anistorn', bio: 'Actress and Friend', password: 'jenniferpassword', profilepic: 'https://i.pinimg.com/originals/68/7f/b0/687fb0f60ce52f262d4bcee849d5488a.jpg')
post3 = Post.create(user_id: jennifer.id, likes: 150, caption: 'Positano', image: 'https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Italy/Amalfi-Coast/positano-view.jpg')
post4 = Post.create(user_id: jennifer.id, likes: 189, caption: 'Woke up in a dream!', image: 'https://cdn.getyourguide.com/img/tour/5ad08ed330595.jpeg/148.jpg')

margot = User.create(username: '@margot', email: 'margot@gmail.com', name: 'Margot Robbie', bio: 'Hollywood Actress, Wolf of Wall street', password: 'margotpassword', profilepic: 'https://www.refinery29.com/images/9894810.jpg?format=webp&width=720&height=864&quality=85&crop=5%3A6')
post5 = Post.create(user_id:margot.id, likes: 240, caption: 'Under the Tuscan Sun!', image: 'https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Italy/Tuscany/tuscany-main-page.jpg')
post6 = Post.create(user_id:margot.id, likes: 217, caption: 'Found this gem', image: 'https://journeytheplanet.com/wp-content/uploads/europe-italy-spello-01.jpg')

taylor = User.create(username: '@taylor', email: 'taylor@gmail.com', name: 'Taylor Swift', bio: 'Singer from Tennessee', password: 'taylorpassword', profilepic: 'https://pmcvariety.files.wordpress.com/2020/01/taylor-swift-variety-cover-5-16x9-1000.jpg?w=1000')
post7 = Post.create(user_id: taylor.id, likes: 264, caption: 'Who loves the Dolomites as much as I do?', image: 'https://www.telegraph.co.uk/content/dam/Travel/2020/June/dolomites-italy-getty-xlarge.jpg')
post8 = Post.create(user_id: taylor.id, likes: 185, caption: 'Lake Braies in the Dolomites', image: 'https://live.staticflickr.com/7870/33530566718_cee182aae8_b.jpg')

comment7 = Comment.create(user_id: margot.id, post_id: post7.id, content: 'I do!')
comment8 = Comment.create(user_id: jennifer.id, post_id: post8.id, content: 'Love it!')
comment1 = Comment.create(user_id: jennifer.id, post_id: post1.id, content: 'Love it!')
comment2 = Comment.create(user_id: margot.id, post_id: post2.id, content: 'I want to got too!')
comment3 = Comment.create(user_id: gaga.id, post_id: post3.id, content: 'Amazing')
comment4 = Comment.create(user_id: margot.id, post_id: post4.id, content: 'Where are you?')
comment5 = Comment.create(user_id: taylor.id, post_id: post5.id, content: 'Enjoy Italy!')
comment6 = Comment.create(user_id: gaga.id, post_id: post6.id, content: 'Is that Umbria?')



tj = Follow.create(follower_id: taylor.id, followee_id: jennifer.id)
gj = Follow.create(follower_id: gaga.id, followee_id: jennifer.id)
jg = Follow.create(follower_id: jennifer.id, followee_id: gaga.id)
jt = Follow.create(follower_id: jennifer.id, followee_id: taylor.id)
tg = Follow.create(follower_id: taylor.id, followee_id: gaga.id)
