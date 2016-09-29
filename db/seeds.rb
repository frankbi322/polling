# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!("users")
User.create!(user_name: "Dave")
User.create!(user_name: "Frank")
User.create!(user_name: "Bob")

Poll.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!("polls")
Poll.create!(title: "Presidential Poll", author_name: "Dave", author_id: 1)
Poll.create!(title: "Favorite Food", author_name: "Frank", author_id: 2)

Question.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!("questions")
Question.create!(poll_id: 1, text: "Who are you voting for? Trump or Clinton?")
Question.create!(poll_id: 2, text: "Pizza or hot dogs?")
Question.create!(poll_id: 2, text: "Coke or Pepsi?")

AnswerChoice.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!("answer_choices")
AnswerChoice.create!(question_id: 1, text: "Trump")
AnswerChoice.create!(question_id: 1, text: "Clinton")
AnswerChoice.create!(question_id: 2, text: "Pizza")
AnswerChoice.create!(question_id: 2, text: "Hot dogs")
AnswerChoice.create!(question_id: 2, text: "Coke")
AnswerChoice.create!(question_id: 2, text: "Pepsi")

Response.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!("responses")
Response.create!(responder_id: 3, response_id: 1)
Response.create!(responder_id: 3, response_id: 3)
Response.create!(responder_id: 3, response_id: 5)

Response.create!(responder_id: 2, response_id: 2)

Response.create!(responder_id: 1, response_id: 4)
Response.create!(responder_id: 1, response_id: 5)
