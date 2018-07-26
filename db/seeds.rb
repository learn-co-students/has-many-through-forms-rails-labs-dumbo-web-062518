# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cute = Category.create(name: "Cute!")
scary = Category.create(name: "Scary")
interesting = Category.create(name: "Interesting")
weird = Category.create(name: "Weird!")
fiction = Category.create(name: "Fiction")

writing = Post.create(title: "My very first post", content: "Nineteen years after the formation of the Empire, Luke Skywalker is thrust into the struggle of the Rebel Alliance when he meets Obi-Wan Kenobi, who has lived for years in seclusion on the desert planet of Tatooine.")

writer = User.create(username: "Peeter", email: "suckit@dumyou.com")
commenter = User.create(username: "Fiery", email: "wutup@sadf.usp")

first_comment = Comment.create(content: "You copy pasted this from the internet.", user_id: 1, post_id: 1)
second_comment = Comment.create(content: "NO!!", user_id: 2, post_id: 1)

through = PostCategory.create(post_id: 1, category_id: 5)
