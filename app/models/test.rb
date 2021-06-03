class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :results, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :users, through: :results

  validates :title, :category, presence: true
  validates :level, numericality: { only_integer: true, greater_than: -1 }
  validates :title, uniqueness: { scope: :level }

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..) }
  scope :by_category, lambda { |category_title|
    joins(:category)
      .where(categories: { title: category_title })
      .order(title: :desc)
  }

  def self.only_title_array_by_categry(category_title)
    by_category(category_title).pluck(:title)
  end
end
