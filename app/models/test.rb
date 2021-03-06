class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :results, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :users, through: :results

  def self.tests_by_category(category_title)
    joins(:category)
        .where(categories: { title: category_title })
        .order(title: :desc)
        .pluck(:title)
  end
end
