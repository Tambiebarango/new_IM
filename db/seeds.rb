# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "wakusati", email: "waku@gmail.com", password: "Theodore95")
User.create(username: "lemuel", email: "lemuel@gmail.com", password: "Theodore95")
User.create(username: "samuel", email: "samuel@gmail.com", password: "Theodore95")
User.create(username: "benaiah", email: "benaiah@gmail.com", password: "Theodore95")

Message.create(message: "this is wakusati", user: User.find(2))
Message.create(message: "this is lemuel", user: User.find(3))
Message.create(message: "this is samuel", user: User.find(4))
Message.create(message: "this is benaiah", user: User.find(5))
Message.create(message: "this is to test when i write a vvery long message. omg guys i'm so excited to be part of this group", user: User.find(1))
