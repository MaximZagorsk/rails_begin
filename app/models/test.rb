class Test < ApplicationRecord
  def self.tests_by_category(category)
    category_id = Category.where(title: category)
    test = Test.where(category_id: category_id[0].id).order("id DESC")
  end
end
