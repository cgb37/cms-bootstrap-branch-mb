# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_list = [
    [ "author@example.com", "password", "author" ],
    [ "member@example.com", "password", "member" ],
    [ "member2@example.com", "password", "member" ],
    [ "member3@example.com", "password", "member" ],
    [ "member4@example.com", "password", "member" ],
    [ "author2@example.com", "password", "author" ],
    [ "author3@example.com", "password", "author" ]
]

user_list.each do |email, password, role|
  User.create( email: email, password: password, role: role )
end


article_list = [
    [ "First Article", "lorem ipsum lorem ipsum", "2" ],
    [ "Second Article", "lorem ipsum lorem ipsum", "2" ],
    [ "Another Article", "lorem ipsum lorem ipsum", "2" ],
    [ "A Great Article", "lorem ipsum lorem ipsum", "8" ],
    [ "The Best Article", "lorem ipsum lorem ipsum", "8" ],
    [ "A Long Article", "lorem ipsum lorem ipsum", "7" ],
    [ "A Short Article", "lorem ipsum lorem ipsum", "7" ]
]

article_list.each do |title, body, user_id|
  Article.create( title: title, body: body, user_id: user_id )
end