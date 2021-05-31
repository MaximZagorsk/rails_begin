class Test < ApplicationRecord
  has_many :results
  has_many :questions
  has_many :users, through: :results
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  def self.tests_by_category(category)
    Test.joins('JOIN categories ON categories.id = tests.category_id')
        .where('categories.title = ?', category)
        .order(title: :desc)
  end
end
