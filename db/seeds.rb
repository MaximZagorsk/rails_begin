# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([
  {title: 'Rails'},
  {title: 'Django'},
  {title: 'JavaScript'}])

users = User.create!([
  {username: 'Ivan', password: 453_213},
  {username: 'Vano', password: 983_532},
  {username: 'Jack', password: 214_567}])

tests = Test.create!([
  {title: 'Rails begin', level: 0, category_id: categories[0].id, author_id: users[0].id},
  {title: 'Django begin', level: 0, category_id: categories[1].id, author_id:users[0].id},
  {title: 'JavaScript begin', level: 0, category_id: categories[2].id, author_id:users[0].id}])

questions = Question.create!([
  {title: 'Django is backend framework?', test_id: tests[1].id},
  {title: 'Rails is backend framework?', test_id: tests[0].id},
  {title: 'JavaScript is backend framework?', test_id: tests[2].id}])

Answer.create!([{ title: 'Yes', correct: true, question_id: questions[0].id },
                { title: 'No', correct: false, question_id: questions[0].id },
                { title: 'Yes', correct: true, question_id: questions[1].id },
                { title: 'No', correct: false, question_id: questions[1].id },
                { title: 'Yes', correct: false, question_id: questions[2].id },
                { title: 'No', correct: true, question_id: questions[2].id }])

Result.create!({ test_id: tests[0].id, user_id: users[0].id, ending: true })
