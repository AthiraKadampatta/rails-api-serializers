# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: 'Athira', email: 'athira@kiprosh.com')
user2 = User.create(name: 'Benchmark User', email: 'benchmark@user.com')

course1 = user1.courses.create(title: 'Javascript Training', description: 'Master JavaScript With The Most Complete Course On The Market.')
course2 = user1.courses.create(title: 'Ruby on Rails', description: ' Learn to make innovative web apps with Ruby on Rails and unleash your creativity')

topic1 = course1.topics.create(name: 'Variables and flow control', description: 'You will learn the fundamentals of JavaScript')
topic2 = course2.topics.create(name: 'Serializers in Rails', description: 'You will learn all the API Serializers in Ruby on Rails')

user1.user_topics.create(topic: topic1, completed_at: Time.now)

topic1.assignments.create(description: 'Declare a variable called myName and initialize it with a value, on the same line.')
topic2.assignments.create(description: 'Render a basic json response from an action controller')

5.times.each_with_index do |ind|
  course = user2.courses.create(title: "Title #{ind}", description: "Description #{ind}")
  10.times do |ind2|
    topic = course.topics.create(name: "Name #{ind} #{ind2}", description: "Description #{ind} #{ind2}")
    user2.user_topics.create(topic: topic, completed_at: Time.now)

    topic.assignments.create(description: "Assignment Desription #{ind} #{ind2}")
  end
end
