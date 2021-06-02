# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([
                                { title: 'Rails' },
                                { title: 'Django' },
                                { title: 'JavaScript' }
                              ])

users = User.create!([
                       { username: 'Ivan', email: 'ivan@example.com', password: 453_213 },
                       { username: 'Vano', email: 'vano@example.com', password: 983_532 },
                       { username: 'Jack', email: 'jack@example.com' , password: 214_567 }
                     ])

tests = Test.create!([
                       { title: 'Rails begin', level: 0, category: categories[0], author: users[0] },
                       { title: 'Django begin', level: 0, category: categories[1], author: users[0] },
                       { title: 'JavaScript begin', level: 0, category: categories[2], author: users[0] }
                     ])

questions = Question.create!([
                               { title: 'Django is backend framework?', test: tests[1] },
                               { title: 'Rails is backend framework?', test: tests[0] },
                               { title: 'JavaScript is backend framework?', test: tests[2] }
                             ])

Answer.create!([{ title: 'Yes', correct: true, question: questions[0] },
                { title: 'No', correct: false, question: questions[0] },
                { title: 'Yes', correct: true, question: questions[1] },
                { title: 'No', correct: false, question: questions[1] },
                { title: 'Yes', correct: false, question: questions[2] },
                { title: 'No', correct: true, question: questions[2] }])

Result.create!({ test: tests[0], user: users[0], ending: true })
