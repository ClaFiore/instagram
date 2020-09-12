require 'faker'
User.destroy_all
Post.destroy_all
Comment.destroy_all
Follow.destroy_all
Like.destroy_all
# Hashtag.destroy_all

# hashtags = ['#picoftheday', '#instagood', '#nofilter', '#tbt', '#love', '#nature', '#family', '#friends', '#travel', '#vacations', '#summer', '#graduationday']

# 10.times do
#     hashtag = Hashtag.create(name: hashtags.sample)
# end

gaga = User.create(username: '@ladygaga', email: 'gaga@gmail.com', name: 'Stefanie Germanotta', bio: 'Singer and Actress(A Star Is Born)', password: 'g', profilepic: 'https://ae01.alicdn.com/kf/HTB1jlGGXsfrK1Rjy1Xdq6yemFXaV/Fashion-Super-Star-Lady-Gaga-Cat-Eye-Sunglasses-Women-Men-2018-Luxury-Brand-Designer-Square-Shades.jpg')
post1 = Post.create(user_id: gaga.id, caption: 'New York tonight', image: 'https://www.nme.com/wp-content/uploads/2018/10/GettyImages-1045712940-696x442.jpg')
post2 = Post.create(user_id: gaga.id, caption: 'Oscars night with Tiffany & Co', image: 'https://media.vanityfair.com/photos/5c733f31d1d4012da45cefe8/master/w_2560%2Cc_limit/00-tout-lady-gaga.jpg')


jennifer = User.create(username: '@jennifer', email: 'ja@gmail.com', name: 'Jennifer Anistorn', bio: 'Actress and Friend', password: 'j', profilepic: 'https://i.pinimg.com/originals/d4/a0/ec/d4a0ecf5047cfc5408cb55dc381a0401.jpg')
post3 = Post.create(user_id: jennifer.id, caption: 'Good Morning!', image: 'https://www.usmagazine.com/wp-content/uploads/2019/10/Reese-Witherspoon-and-Jennifer-Aniston-Morning-Show-Salaries-Revealed.jpg?quality=86&strip=all')
post4 = Post.create(user_id: jennifer.id, caption: "Who's ready for a friends reunion?", image: 'https://www.cheatsheet.com/wp-content/uploads/2020/07/jennifer-aniston-friends-1994.jpg')

margot = User.create(username: '@margot', email: 'margot@gmail.com', name: 'Margot Robbie', bio: 'Hollywood Actress, Wolf of Wall street', password: 'm', profilepic: 'https://www.instylemag.com.au/media/12183/margot-robbie-square.jpg')
post5 = Post.create(user_id:margot.id, caption: "New hair don't care", image: 'https://assets.vogue.com/photos/5cf7ed4504f90a017a26d60f/master/pass/5-things-to-know-about-margot-robbie.jpg')
post6 = Post.create(user_id:margot.id, caption: 'So much fun working with these inspiring ladies!', image: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2019%2F10%2Fld-d21-04710-r2-2000.jpg')

taylor = User.create(username: '@taylor', email: 'taylor@gmail.com', name: 'Taylor Swift', bio: 'Singer from Tennessee', password: 't', profilepic: 'https://cdn1.i-scmp.com/sites/default/files/styles/768x768/public/2015/07/22/charts_tor421_46706553.jpg?itok=ndaCUFqE')
post7 = Post.create(user_id: taylor.id, caption: 'Amazing concert last night! Thank you guys for your love!', image: 'https://content.fortune.com/wp-content/uploads/2017/09/taylor-swift.jpg')
post8 = Post.create(user_id: taylor.id, caption: 'New release: LOVER! Go check it out!', image: 'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=2000&h=2000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2019%2F10%2Ftaylor-swift-lover-2000.jpg')

comment7 = Comment.create(user_id: margot.id, post_id: post7.id, content: 'I do!')
comment8 = Comment.create(user_id: jennifer.id, post_id: post8.id, content: 'Love it!')
comment1 = Comment.create(user_id: jennifer.id, post_id: post1.id, content: 'Love it!')
comment2 = Comment.create(user_id: margot.id, post_id: post2.id, content: 'I want to got too!')
comment3 = Comment.create(user_id: gaga.id, post_id: post3.id, content: 'Amazing')
comment4 = Comment.create(user_id: margot.id, post_id: post4.id, content: 'Where are you?')
comment5 = Comment.create(user_id: taylor.id, post_id: post5.id, content: 'Enjoy Italy!')
comment6 = Comment.create(user_id: gaga.id, post_id: post6.id, content: 'Is that Umbria?')

like1 = Like.create(user_id: margot.id, post_id: post1.id)
like2 = Like.create(user_id: jennifer.id, post_id: post1.id)
like3 = Like.create(user_id: jennifer.id, post_id: post5.id)

tj = Follow.create(follower_id: taylor.id, followee_id: jennifer.id)
gj = Follow.create(follower_id: gaga.id, followee_id: jennifer.id)
jg = Follow.create(follower_id: jennifer.id, followee_id: gaga.id)
jt = Follow.create(follower_id: jennifer.id, followee_id: taylor.id)
tg = Follow.create(follower_id: taylor.id, followee_id: gaga.id)
