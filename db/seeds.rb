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
post1 = Post.create(user_id: gaga, likes: 128, caption: 'Love my new Hermes bag!', image: 'https://www.uokpl.rs/fpng/f/524-5245588_victoria-beckham-with.png')
post2 = Post.create(user_id: gaga, likes: 178, caption: 'Went shopping today', image: 'https://purepng.com/public/uploads/medium/purepng.com-louis-vuitton-women-baghandbagwomen-bagsoft-fabricladieslouisvuitton-1421526415334wvyve.png')
comment1 = Comment.create(post_id: post1, content: 'Love it!')
comment2 = Comment.create(post_id: post2, content: 'Call me next time!')


jennifer = User.create(username: '@jennifer', email: 'ja@gmail.com', name: 'Jennifer Anistorn', bio: 'Actress and Friend', password: 'jenniferpassword', profilepic: 'https://i.pinimg.com/originals/68/7f/b0/687fb0f60ce52f262d4bcee849d5488a.jpg')
post3 = Post.create(user_id: jennifer, likes: 150, caption: 'I love pink', image: 'https://www.prada.com/content/dam/pradanux_products/1/1BA/1BA282/2ERXF0442/1BA282_2ERX_F0442_V_MOE_SLR.png')
post4 = Post.create(user_id: jennifer, likes: 189, caption: 'Ready for Prada fashion show!', image: 'https://www.prada.com/content/dam/pradanux_products/1/1BA/1BA786/NZVF0002/1BA786_NZV_F0002_V_OOO_SLR.png')
comment3 = Comment.create(post_id: post3, content: 'Amazing')
comment4 = Comment.create(post_id: post4, content: 'Where did you get it?')

margot = User.create(username: '@margot', email: 'margot@gmail.com', name: 'Margot Robbie', bio: 'Hollywood Actress, Wolf of Wall street', password: 'margotpassword', profilepic: 'https://www.refinery29.com/images/9894810.jpg?format=webp&width=720&height=864&quality=85&crop=5%3A6')
post5 = Post.create(user_id:margot, likes: 240, caption: 'Ready for my Italian vacation!', image: 'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.prod.s3.amazonaws.com%2F86578f7e-7d8f-11e7-ab01-a13271d1ee9c?fit=scale-down&source=next&width=700')
post6 = Post.create(user_id:margot, likes: 217, caption: 'Je Adore!', image: 'https://imgix.bustle.com/uploads/image/2019/12/18/7162aa5b-be69-4ede-b200-f20515d2f97d-dior_cruise_2020_new_30_montaigne_bag_7.png')
comment5 = Comment.create(post_id: post5, content: 'Enjoy Italy!')
comment6 = Comment.create(post_id: post6, content: 'Moi aussi')

taylor = User.create(username: '@taylor', email: 'taylor@gmail.com', name: 'Taylor Swift', bio: 'Singer from Tennessee', password: 'taylorpassword', profilepic: 'https://pmcvariety.files.wordpress.com/2020/01/taylor-swift-variety-cover-5-16x9-1000.jpg?w=1000')
post7 = Post.create(user_id: taylor, likes: 264, caption: 'Stella', image: 'https://i.pinimg.com/originals/a9/f2/73/a9f273a5fb8d1dbffa9c3f5a02467d44.png')
post8 = Post.create(user_id: taylor, likes: 185, caption: 'Ops I did it again!', image: 'https://www.gogoalbags.co/html/upload/item_img/201901/77352/1548488141588597406.png')
comment7 = Comment.create(post_id: post7, content: 'Luna')
comment8 = Comment.create(post_id: post8, content: 'Love the color!')
