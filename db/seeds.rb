# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_rails = Category.create!(title: 'Rails')
category_django = Category.create!(title: 'Django')
category_javascript = Category.create!(title: 'JavaScript')

user_Ivan = User.create!(username: 'Ivan', password: 453_213)
user_Vano = User.create!(username: 'Vano', password: 983_532)
user_Jack = User.create!(username: 'Jack', password: 214_567)

test_rails = Test.create!(title: 'Rails begin', level: 0, category_id: category_rails.id, author_id: user_Ivan.id)
test_django = Test.create!(title: 'Django begin', level: 0, category_id: category_django.id, author_id: user_Ivan.id)
test_javascript = Test.create!(title: 'JavaScript begin', level: 0, category_id: category_javascript.id,
                               author_id: user_Ivan.id)

question_djangobegin = Question.create!(title: 'Django is backend framework?', test_id: test_django.id)
question_railsbegin = Question.create!(title: 'Rails is backend framework?', test_id: test_django.id)
question_javascriptbegin = Question.create!(title: 'JavaScript is backend framework?', test_id: test_django.id)

answer_qdb = Answer.create!([
                              { title: 'Yes', correct: true, question_id: question_djangobegin.id },
                              { title: 'No', correct: false, question_id: question_djangobegin.id }
                            ])

answer_qrb = Answer.create!([
                              { title: 'Yes', correct: true, question_id: question_railsbegin.id },
                              { title: 'No', correct: false, question_id: question_railsbegin.id }
                            ])

answer_qjsb = Answer.create!([
                               { title: 'Yes', correct: true, question_id: question_javascriptbegin.id },
                               { title: 'No', correct: false, question_id: question_javascriptbegin.id }
                             ])

result_ivan = Result.create!(test_id: test_rails.id, user_id: user_Ivan.id, ending: true)
