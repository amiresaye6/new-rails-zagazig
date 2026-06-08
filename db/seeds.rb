PostEditor.destroy_all
Post.destroy_all
Editor.destroy_all
User.destroy_all

user1 = User.create!(name: 'Ahmed', email: 'ahmed@example.com')
user2 = User.create!(name: 'Sara', email: 'sara@example.com')

editor1 = Editor.create!(name: 'Tech Editor')
editor2 = Editor.create!(name: 'Content Editor')

post1 = Post.create!(title: 'Rails Associations', body: 'Learning M:M', creator: user1)
post2 = Post.create!(title: 'API Mode', body: 'Building an API', creator: user2)

post1.editors << editor1
post2.editors << [ editor1, editor2 ]

puts "Seeded #{User.count} users, #{Editor.count} editors, and #{Post.count} posts."
